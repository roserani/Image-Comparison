# Install script for directory: /home/rani/OpenCV-2.4.2/samples/cpp

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/cpp" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/rani/OpenCV-2.4.2/samples/cpp/fitellipse.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/drawing.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/connected_components.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/demhist.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/OpenEXRimages_HighDynamicRange_Retina_toneMapping_video.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/rgbdodometry.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/starter_video.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/videostab.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/grabcut.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/edge.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/detector_descriptor_evaluation.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/retinaDemo.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/squares.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/em.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/meanshift_segmentation.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/ffilldemo.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/kalman.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/fback.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/facerec_demo.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/detection_based_tracker_sample.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/points_classifier.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/phase_corr.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/laplace.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/stitching_detailed.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/imagelist_creator.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/generic_descriptor_match.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/minarea.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/hybridtrackingsample.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/distrans.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/logpolar_bsm.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/point_cloud.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/houghcircles.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/bgfg_segm.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/OpenEXRimages_HighDynamicRange_Retina_toneMapping.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/houghlines.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/cout_mat.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/matching_to_many_images.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/opencv_version.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/convexhull.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/bagofwords_classification.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/delaunay2.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/stitching.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/descriptor_extractor_matcher.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/freak_demo.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/calibration.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/stereo_match.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/watershed.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/select3dobj.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/camshiftdemo.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/peopledetect.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/dft.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/stereo_calib.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/starter_imagelist.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/video_dmtx.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/brief_match_test.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/contours2.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/latentsvm_multidetect.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/3calibration.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/chamfer.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/letter_recog.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/image.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/lkdemo.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/matcher_simple.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/video_homography.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/linemod.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/openni_capture.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/inpaint.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/gencolors.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/calibration_artificial.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/multicascadeclassifier.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/segment_objects.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/kmeans.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/detector_descriptor_matcher_evaluation.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/filestorage.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/build3dmodel.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/morphology2.cpp"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left06.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right04.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/stuff.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/board.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right03.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left05.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right09.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left08.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left14.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right02.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left13.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left12.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/building.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right12.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/baboon.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right14.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right13.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left09.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right05.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/lena.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right01.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/fruits.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left02.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left01.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right06.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right07.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left04.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left03.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right08.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/right11.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left11.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/left07.jpg"
    "/home/rani/OpenCV-2.4.2/samples/cpp/pic1.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/tsukuba_l.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/logo.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/pic3.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/pic5.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/pic6.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/pic2.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/logo_in_clutter.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/pic4.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/tsukuba_r.png"
    "/home/rani/OpenCV-2.4.2/samples/cpp/letter-recognition.data"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

