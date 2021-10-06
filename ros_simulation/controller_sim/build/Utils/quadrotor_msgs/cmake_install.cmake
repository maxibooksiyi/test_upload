# Install script for directory: /home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/southriver/ros_simulation/ros_simulation/controller_sim/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs/msg" TYPE FILE FILES
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/AuxCommand.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/Corrections.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/Gains.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/OutputData.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/PositionCommand.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/PPROutputData.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/Serial.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/SO3Command.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/StatusData.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/TRPYCommand.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/Odometry.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/PolynomialTrajectory.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/OptimalTimeAllocator.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/TrajectoryMatrix.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/ReplanCheck.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/SpatialTemporalTrajectory.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/Bspline.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/SwarmCommand.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/Replan.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/SwarmOdometry.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/SwarmInfo.msg"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/msg/Px4ctrlDebug.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs/cmake" TYPE FILE FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/build/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/devel/include/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/devel/share/roseus/ros/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/devel/share/common-lisp/ros/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/devel/share/gennodejs/ros/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/southriver/ros_simulation/ros_simulation/controller_sim/devel/lib/python2.7/dist-packages/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/devel/lib/python2.7/dist-packages/quadrotor_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/build/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs/cmake" TYPE FILE FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/build/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs/cmake" TYPE FILE FILES
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/build/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgsConfig.cmake"
    "/home/southriver/ros_simulation/ros_simulation/controller_sim/build/Utils/quadrotor_msgs/catkin_generated/installspace/quadrotor_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/quadrotor_msgs" TYPE FILE FILES "/home/southriver/ros_simulation/ros_simulation/controller_sim/src/Utils/quadrotor_msgs/package.xml")
endif()

