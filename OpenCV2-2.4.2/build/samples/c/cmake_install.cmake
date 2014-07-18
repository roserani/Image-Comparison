# Install script for directory: /home/rani/OpenCV-2.4.2/samples/c

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/c" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/rani/OpenCV-2.4.2/samples/c/convert_cascade.c"
    "/home/rani/OpenCV-2.4.2/samples/c/delaunay.c"
    "/home/rani/OpenCV-2.4.2/samples/c/polar_transforms.c"
    "/home/rani/OpenCV-2.4.2/samples/c/motempl.c"
    "/home/rani/OpenCV-2.4.2/samples/c/contours.c"
    "/home/rani/OpenCV-2.4.2/samples/c/morphology.c"
    "/home/rani/OpenCV-2.4.2/samples/c/fback_c.c"
    "/home/rani/OpenCV-2.4.2/samples/c/pyramid_segmentation.c"
    "/home/rani/OpenCV-2.4.2/samples/c/adaptiveskindetector.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/mushroom.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/one_way_sample.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/blobtrack_sample.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/find_obj_calonder.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/find_obj.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/mser_sample.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/latentsvmdetect.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/find_obj_ferns.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/bgfg_codebook.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/tree_engine.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/facedetect.cpp"
    "/home/rani/OpenCV-2.4.2/samples/c/baboon200_rotated.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/one_way_train_0000.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/stuff.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/airplane.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/cat.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/baboon.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/lena.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/fruits.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/one_way_train_0001.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/baboon200.jpg"
    "/home/rani/OpenCV-2.4.2/samples/c/box.png"
    "/home/rani/OpenCV-2.4.2/samples/c/puzzle.png"
    "/home/rani/OpenCV-2.4.2/samples/c/JCB.png"
    "/home/rani/OpenCV-2.4.2/samples/c/box_in_scene.png"
    "/home/rani/OpenCV-2.4.2/samples/c/agaricus-lepiota.data"
    "/home/rani/OpenCV-2.4.2/samples/c/waveform.data"
    "/home/rani/OpenCV-2.4.2/samples/c/build_all.sh"
    "/home/rani/OpenCV-2.4.2/samples/c/cvsample.dsp"
    "/home/rani/OpenCV-2.4.2/samples/c/facedetect.cmd"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

