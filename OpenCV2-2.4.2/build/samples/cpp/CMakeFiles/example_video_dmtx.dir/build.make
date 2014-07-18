# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rani/OpenCV-2.4.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rani/OpenCV-2.4.2/build

# Include any dependencies generated for this target.
include samples/cpp/CMakeFiles/example_video_dmtx.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/example_video_dmtx.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/example_video_dmtx.dir/flags.make

samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o: samples/cpp/CMakeFiles/example_video_dmtx.dir/flags.make
samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o: ../samples/cpp/video_dmtx.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rani/OpenCV-2.4.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o"
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o -c /home/rani/OpenCV-2.4.2/samples/cpp/video_dmtx.cpp

samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.i"
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rani/OpenCV-2.4.2/samples/cpp/video_dmtx.cpp > CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.i

samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.s"
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rani/OpenCV-2.4.2/samples/cpp/video_dmtx.cpp -o CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.s

samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o.requires:
.PHONY : samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o.requires

samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o.provides: samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/example_video_dmtx.dir/build.make samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o.provides

samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o.provides.build: samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o

# Object files for target example_video_dmtx
example_video_dmtx_OBJECTS = \
"CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o"

# External object files for target example_video_dmtx
example_video_dmtx_EXTERNAL_OBJECTS =

bin/video_dmtx: samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o
bin/video_dmtx: samples/cpp/CMakeFiles/example_video_dmtx.dir/build.make
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libGL.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libSM.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libICE.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libX11.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libXext.so
bin/video_dmtx: lib/libopencv_core.so.2.4.2
bin/video_dmtx: lib/libopencv_flann.so.2.4.2
bin/video_dmtx: lib/libopencv_imgproc.so.2.4.2
bin/video_dmtx: lib/libopencv_highgui.so.2.4.2
bin/video_dmtx: lib/libopencv_ml.so.2.4.2
bin/video_dmtx: lib/libopencv_video.so.2.4.2
bin/video_dmtx: lib/libopencv_objdetect.so.2.4.2
bin/video_dmtx: lib/libopencv_photo.so.2.4.2
bin/video_dmtx: lib/libopencv_nonfree.so.2.4.2
bin/video_dmtx: lib/libopencv_features2d.so.2.4.2
bin/video_dmtx: lib/libopencv_calib3d.so.2.4.2
bin/video_dmtx: lib/libopencv_legacy.so.2.4.2
bin/video_dmtx: lib/libopencv_contrib.so.2.4.2
bin/video_dmtx: lib/libopencv_stitching.so.2.4.2
bin/video_dmtx: lib/libopencv_videostab.so.2.4.2
bin/video_dmtx: lib/libopencv_gpu.so.2.4.2
bin/video_dmtx: lib/libopencv_ml.so.2.4.2
bin/video_dmtx: lib/libopencv_photo.so.2.4.2
bin/video_dmtx: lib/libopencv_video.so.2.4.2
bin/video_dmtx: lib/libopencv_objdetect.so.2.4.2
bin/video_dmtx: lib/libopencv_nonfree.so.2.4.2
bin/video_dmtx: lib/libopencv_calib3d.so.2.4.2
bin/video_dmtx: lib/libopencv_features2d.so.2.4.2
bin/video_dmtx: lib/libopencv_flann.so.2.4.2
bin/video_dmtx: lib/libopencv_highgui.so.2.4.2
bin/video_dmtx: lib/libopencv_imgproc.so.2.4.2
bin/video_dmtx: lib/libopencv_core.so.2.4.2
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libz.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libGL.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libSM.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libICE.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libX11.so
bin/video_dmtx: /usr/lib/x86_64-linux-gnu/libXext.so
bin/video_dmtx: samples/cpp/CMakeFiles/example_video_dmtx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/video_dmtx"
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_video_dmtx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/example_video_dmtx.dir/build: bin/video_dmtx
.PHONY : samples/cpp/CMakeFiles/example_video_dmtx.dir/build

samples/cpp/CMakeFiles/example_video_dmtx.dir/requires: samples/cpp/CMakeFiles/example_video_dmtx.dir/video_dmtx.cpp.o.requires
.PHONY : samples/cpp/CMakeFiles/example_video_dmtx.dir/requires

samples/cpp/CMakeFiles/example_video_dmtx.dir/clean:
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/example_video_dmtx.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/example_video_dmtx.dir/clean

samples/cpp/CMakeFiles/example_video_dmtx.dir/depend:
	cd /home/rani/OpenCV-2.4.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rani/OpenCV-2.4.2 /home/rani/OpenCV-2.4.2/samples/cpp /home/rani/OpenCV-2.4.2/build /home/rani/OpenCV-2.4.2/build/samples/cpp /home/rani/OpenCV-2.4.2/build/samples/cpp/CMakeFiles/example_video_dmtx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/example_video_dmtx.dir/depend

