#include <linear_control.h>
#include <iostream>
#include <ros/ros.h>
#include <math.h>

LinearControl::LinearControl()
    : mass_(0.49), g_(9.81)
{
}

void LinearControl::setMass(const double mass)
{
  mass_ = mass;
}

void LinearControl::setGravity(const double g)
{
  g_ = g;
}

Eigen::Quaterniond ToQuaternion(Eigen::Vector3d Euler)
{
  //code here
  double w, x, y, z;
  w = cos(Euler(0) / 2) * cos(Euler(1) / 2) * cos(Euler(2) / 2) + sin(Euler(0) / 2) * sin(Euler(1) / 2) * sin(Euler(2) / 2);
  x = sin(Euler(0) / 2) * cos(Euler(1) / 2) * cos(Euler(2) / 2) - cos(Euler(0) / 2) * sin(Euler(1) / 2) * sin(Euler(2) / 2);
  y = cos(Euler(0) / 2) * sin(Euler(1) / 2) * cos(Euler(2) / 2) + sin(Euler(0) / 2) * cos(Euler(1) / 2) * sin(Euler(2) / 2);
  z = cos(Euler(0) / 2) * cos(Euler(1) / 2) * sin(Euler(2) / 2) - sin(Euler(0) / 2) * sin(Euler(1) / 2) * cos(Euler(2) / 2);
  Eigen::Quaterniond res(w, x, y, z);
  return res;
}

Eigen::Vector3d ToEuler(Eigen::Quaterniond q)
{
  //code here
  double v_1, v_2, v_3;
  v_1 = atan2(2 * (q.w() * q.x() + q.y() * q.z()), (1 - 2 * (q.x() * q.x() + q.y() * q.y())));
  v_2 = asin(2 * (q.w() * q.y() - q.x() * q.z()));
  v_3 = atan2(2 * (q.w() * q.z() + q.x() * q.y()), (1 - 2 * (q.y() * q.y() + q.z() * q.z())));
  Eigen::Vector3d res(v_1, v_2, v_3);
  return res;
}

#define GRAVITATIONAL_ACCELERATION (9.81)
void LinearControl::calculateControl(Desired_State_t des, //const Desired_State_t &des,
                                     const Odom_Data_t &odom,
                                     const Imu_Data_t &imu,
                                     Controller_Output_t &u,
                                     Gain gain)
{
  //Eigen::Vector3d new_des_pos(10, 10, 4);
  //des.p = new_des_pos;

  double thrust = mass_ * (/*g_*/GRAVITATIONAL_ACCELERATION + des.a(2) + gain.KAngY * (des.v(2) - odom.v(2)) + 2 * gain.Kp2 * (des.p(2) - odom.p(2)));
  u.thrust = thrust; //code here

  Eigen::Vector3d current_pos = ToEuler(odom.q);
  Eigen::Vector3d des_pos = ToEuler(des.q);

  double ddot_p_xc = des.a(0) + gain.KAngR * (des.v(0) - odom.v(0)) + gain.Kp0 * (des.p(0) - odom.p(0));
  double ddot_p_yc = des.a(1) + gain.KAngP * (des.v(1) - odom.v(1)) + gain.Kp1 * (des.p(1) - odom.p(1));
  double ddot_p_zc = des.a(2) + gain.KAngY * (des.v(2) - odom.v(2)) + gain.Kp2 * (des.p(2) - odom.p(2));

  double phi_c = (ddot_p_xc * sin(current_pos(2)) - ddot_p_yc * cos(current_pos(2))) / /*g_*/GRAVITATIONAL_ACCELERATION;
  double theta_c = (ddot_p_xc * cos(current_pos(2)) + ddot_p_yc * sin(current_pos(2))) / /*g_*/GRAVITATIONAL_ACCELERATION;
  //double psi_c;

  Eigen::Vector3d pos(phi_c, theta_c, 0); //psi_c还不知怎么算，，，，
  Eigen::Quaterniond res = ToQuaternion(pos);

  u.q = res; //Eigen::Quaterniond(1, 0, 0, 0); //code here

  std::cout << "Error:" << std::endl;
  for (int i = 0; i < 3; i++)
  {
    std::cout << "des.p_" << i << "-p_" << i << ": " << des.p(i) - odom.p(i) << std::endl;
  }
  std::cout << std::endl;
}