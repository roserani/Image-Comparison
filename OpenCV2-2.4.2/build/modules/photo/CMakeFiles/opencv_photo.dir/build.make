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
include modules/photo/CMakeFiles/opencv_photo.dir/depend.make

# Include the progress variables for this target.
include modules/photo/CMakeFiles/opencv_photo.dir/progress.make

# Include the compile flags for this target's objects.
include modules/photo/CMakeFiles/opencv_photo.dir/flags.make

modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o: modules/photo/CMakeFiles/opencv_photo.dir/flags.make
modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o: ../modules/photo/src/precomp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rani/OpenCV-2.4.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o"
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/precomp.cpp.o -c /home/rani/OpenCV-2.4.2/modules/photo/src/precomp.cpp

modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/precomp.cpp.i"
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rani/OpenCV-2.4.2/modules/photo/src/precomp.cpp > CMakeFiles/opencv_photo.dir/src/precomp.cpp.i

modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/precomp.cpp.s"
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rani/OpenCV-2.4.2/modules/photo/src/precomp.cpp -o CMakeFiles/opencv_photo.dir/src/precomp.cpp.s

modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o.requires:
.PHONY : modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o.requires

modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o.provides: modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o.requires
	$(MAKE) -f modules/photo/CMakeFiles/opencv_photo.dir/build.make modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o.provides.build
.PHONY : modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o.provides

modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o.provides.build: modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o

modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o: modules/photo/CMakeFiles/opencv_photo.dir/flags.make
modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o: ../modules/photo/src/inpaint.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rani/OpenCV-2.4.2/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o"
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o -c /home/rani/OpenCV-2.4.2/modules/photo/src/inpaint.cpp

modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_photo.dir/src/inpaint.cpp.i"
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rani/OpenCV-2.4.2/modules/photo/src/inpaint.cpp > CMakeFiles/opencv_photo.dir/src/inpaint.cpp.i

modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_photo.dir/src/inpaint.cpp.s"
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rani/OpenCV-2.4.2/modules/photo/src/inpaint.cpp -o CMakeFiles/opencv_photo.dir/src/inpaint.cpp.s

modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o.requires:
.PHONY : modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o.requires

modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o.provides: modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o.requires
	$(MAKE) -f modules/photo/CMakeFiles/opencv_photo.dir/build.make modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o.provides.build
.PHONY : modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o.provides

modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o.provides.build: modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o

# Object files for target opencv_photo
opencv_photo_OBJECTS = \
"CMakeFiles/opencv_photo.dir/src/precomp.cpp.o" \
"CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o"

# External object files for target opencv_photo
opencv_photo_EXTERNAL_OBJECTS =

lib/libopencv_photo.so.2.4.2: modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o
lib/libopencv_photo.so.2.4.2: modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o
lib/libopencv_photo.so.2.4.2: modules/photo/CMakeFiles/opencv_photo.dir/build.make
lib/libopencv_photo.so.2.4.2: lib/libopencv_core.so.2.4.2
lib/libopencv_photo.so.2.4.2: lib/libopencv_imgproc.so.2.4.2
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libGLU.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libGL.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libSM.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libICE.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libX11.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libXext.so
lib/libopencv_photo.so.2.4.2: lib/libopencv_core.so.2.4.2
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libz.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libGLU.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libGL.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libSM.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libICE.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libX11.so
lib/libopencv_photo.so.2.4.2: /usr/lib/x86_64-linux-gnu/libXext.so
lib/libopencv_photo.so.2.4.2: modules/photo/CMakeFiles/opencv_photo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../lib/libopencv_photo.so"
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_photo.dir/link.txt --verbose=$(VERBOSE)
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libopencv_photo.so.2.4.2 ../../lib/libopencv_photo.so.2.4 ../../lib/libopencv_photo.so

lib/libopencv_photo.so.2.4: lib/libopencv_photo.so.2.4.2

lib/libopencv_photo.so: lib/libopencv_photo.so.2.4.2

# Rule to build all files generated by this target.
modules/photo/CMakeFiles/opencv_photo.dir/build: lib/libopencv_photo.so
.PHONY : modules/photo/CMakeFiles/opencv_photo.dir/build

modules/photo/CMakeFiles/opencv_photo.dir/requires: modules/photo/CMakeFiles/opencv_photo.dir/src/precomp.cpp.o.requires
modules/photo/CMakeFiles/opencv_photo.dir/requires: modules/photo/CMakeFiles/opencv_photo.dir/src/inpaint.cpp.o.requires
.PHONY : modules/photo/CMakeFiles/opencv_photo.dir/requires

modules/photo/CMakeFiles/opencv_photo.dir/clean:
	cd /home/rani/OpenCV-2.4.2/build/modules/photo && $(CMAKE_COMMAND) -P CMakeFiles/opencv_photo.dir/cmake_clean.cmake
.PHONY : modules/photo/CMakeFiles/opencv_photo.dir/clean

modules/photo/CMakeFiles/opencv_photo.dir/depend:
	cd /home/rani/OpenCV-2.4.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rani/OpenCV-2.4.2 /home/rani/OpenCV-2.4.2/modules/photo /home/rani/OpenCV-2.4.2/build /home/rani/OpenCV-2.4.2/build/modules/photo /home/rani/OpenCV-2.4.2/build/modules/photo/CMakeFiles/opencv_photo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/photo/CMakeFiles/opencv_photo.dir/depend

