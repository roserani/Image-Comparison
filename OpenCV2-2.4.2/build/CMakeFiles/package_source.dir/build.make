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

# Utility rule file for package_source.

# Include the progress variables for this target.
include CMakeFiles/package_source.dir/progress.make

CMakeFiles/package_source:
	cd /home/rani/OpenCV-2.4.2 && tar --transform "s,^,OpenCV-2.4.2/," -cjpf /home/rani/OpenCV-2.4.2/build/OpenCV-2.4.2.tar.bz2 --exclude=".svn" --exclude="*.pyc" --exclude="*.vcproj" --exclude="*/lib/*" --exclude="*.dll" ./

package_source: CMakeFiles/package_source
package_source: CMakeFiles/package_source.dir/build.make
.PHONY : package_source

# Rule to build all files generated by this target.
CMakeFiles/package_source.dir/build: package_source
.PHONY : CMakeFiles/package_source.dir/build

CMakeFiles/package_source.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/package_source.dir/cmake_clean.cmake
.PHONY : CMakeFiles/package_source.dir/clean

CMakeFiles/package_source.dir/depend:
	cd /home/rani/OpenCV-2.4.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rani/OpenCV-2.4.2 /home/rani/OpenCV-2.4.2 /home/rani/OpenCV-2.4.2/build /home/rani/OpenCV-2.4.2/build /home/rani/OpenCV-2.4.2/build/CMakeFiles/package_source.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/package_source.dir/depend

