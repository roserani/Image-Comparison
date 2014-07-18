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
include samples/cpp/CMakeFiles/example_segment_objects.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/example_segment_objects.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/example_segment_objects.dir/flags.make

samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o: samples/cpp/CMakeFiles/example_segment_objects.dir/flags.make
samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o: ../samples/cpp/segment_objects.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rani/OpenCV-2.4.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o"
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o -c /home/rani/OpenCV-2.4.2/samples/cpp/segment_objects.cpp

samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_segment_objects.dir/segment_objects.cpp.i"
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rani/OpenCV-2.4.2/samples/cpp/segment_objects.cpp > CMakeFiles/example_segment_objects.dir/segment_objects.cpp.i

samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_segment_objects.dir/segment_objects.cpp.s"
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rani/OpenCV-2.4.2/samples/cpp/segment_objects.cpp -o CMakeFiles/example_segment_objects.dir/segment_objects.cpp.s

samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o.requires:
.PHONY : samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o.requires

samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o.provides: samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/example_segment_objects.dir/build.make samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o.provides

samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o.provides.build: samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o

# Object files for target example_segment_objects
example_segment_objects_OBJECTS = \
"CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o"

# External object files for target example_segment_objects
example_segment_objects_EXTERNAL_OBJECTS =

bin/segment_objects: samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o
bin/segment_objects: samples/cpp/CMakeFiles/example_segment_objects.dir/build.make
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libGL.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libSM.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libICE.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libX11.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libXext.so
bin/segment_objects: lib/libopencv_core.so.2.4.2
bin/segment_objects: lib/libopencv_flann.so.2.4.2
bin/segment_objects: lib/libopencv_imgproc.so.2.4.2
bin/segment_objects: lib/libopencv_highgui.so.2.4.2
bin/segment_objects: lib/libopencv_ml.so.2.4.2
bin/segment_objects: lib/libopencv_video.so.2.4.2
bin/segment_objects: lib/libopencv_objdetect.so.2.4.2
bin/segment_objects: lib/libopencv_photo.so.2.4.2
bin/segment_objects: lib/libopencv_nonfree.so.2.4.2
bin/segment_objects: lib/libopencv_features2d.so.2.4.2
bin/segment_objects: lib/libopencv_calib3d.so.2.4.2
bin/segment_objects: lib/libopencv_legacy.so.2.4.2
bin/segment_objects: lib/libopencv_contrib.so.2.4.2
bin/segment_objects: lib/libopencv_stitching.so.2.4.2
bin/segment_objects: lib/libopencv_videostab.so.2.4.2
bin/segment_objects: lib/libopencv_gpu.so.2.4.2
bin/segment_objects: lib/libopencv_ml.so.2.4.2
bin/segment_objects: lib/libopencv_photo.so.2.4.2
bin/segment_objects: lib/libopencv_video.so.2.4.2
bin/segment_objects: lib/libopencv_objdetect.so.2.4.2
bin/segment_objects: lib/libopencv_nonfree.so.2.4.2
bin/segment_objects: lib/libopencv_calib3d.so.2.4.2
bin/segment_objects: lib/libopencv_features2d.so.2.4.2
bin/segment_objects: lib/libopencv_flann.so.2.4.2
bin/segment_objects: lib/libopencv_highgui.so.2.4.2
bin/segment_objects: lib/libopencv_imgproc.so.2.4.2
bin/segment_objects: lib/libopencv_core.so.2.4.2
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libz.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libGL.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libSM.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libICE.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libX11.so
bin/segment_objects: /usr/lib/x86_64-linux-gnu/libXext.so
bin/segment_objects: samples/cpp/CMakeFiles/example_segment_objects.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/segment_objects"
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_segment_objects.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/example_segment_objects.dir/build: bin/segment_objects
.PHONY : samples/cpp/CMakeFiles/example_segment_objects.dir/build

samples/cpp/CMakeFiles/example_segment_objects.dir/requires: samples/cpp/CMakeFiles/example_segment_objects.dir/segment_objects.cpp.o.requires
.PHONY : samples/cpp/CMakeFiles/example_segment_objects.dir/requires

samples/cpp/CMakeFiles/example_segment_objects.dir/clean:
	cd /home/rani/OpenCV-2.4.2/build/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/example_segment_objects.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/example_segment_objects.dir/clean

samples/cpp/CMakeFiles/example_segment_objects.dir/depend:
	cd /home/rani/OpenCV-2.4.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rani/OpenCV-2.4.2 /home/rani/OpenCV-2.4.2/samples/cpp /home/rani/OpenCV-2.4.2/build /home/rani/OpenCV-2.4.2/build/samples/cpp /home/rani/OpenCV-2.4.2/build/samples/cpp/CMakeFiles/example_segment_objects.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/example_segment_objects.dir/depend

