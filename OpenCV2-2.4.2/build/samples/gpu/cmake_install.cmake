# Install script for directory: /home/rani/OpenCV-2.4.2/samples/gpu

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu/performance" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/rani/OpenCV-2.4.2/samples/gpu/performance/tests.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/performance/performance.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/performance/performance.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/rani/OpenCV-2.4.2/samples/gpu/stereo_multi.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/cascadeclassifier_nvidia_api.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/highgui_gpu.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/morfology.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/cascadeclassifier.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/brox_optical_flow.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/multi.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/pyrlk_optical_flow.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/farneback_optical_flow.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/hog.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/alpha_comp.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/stereo_match.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/surf_keypoint_matcher.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/driver_api_multi.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/opticalflow_nvidia_api.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/driver_api_stereo_multi.cpp"
    "/home/rani/OpenCV-2.4.2/samples/gpu/aloeR.jpg"
    "/home/rani/OpenCV-2.4.2/samples/gpu/aloeL.jpg"
    "/home/rani/OpenCV-2.4.2/samples/gpu/road.png"
    "/home/rani/OpenCV-2.4.2/samples/gpu/tsucuba_left.png"
    "/home/rani/OpenCV-2.4.2/samples/gpu/rubberwhale2.png"
    "/home/rani/OpenCV-2.4.2/samples/gpu/rubberwhale1.png"
    "/home/rani/OpenCV-2.4.2/samples/gpu/tsucuba_right.png"
    "/home/rani/OpenCV-2.4.2/samples/gpu/basketball2.png"
    "/home/rani/OpenCV-2.4.2/samples/gpu/basketball1.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

