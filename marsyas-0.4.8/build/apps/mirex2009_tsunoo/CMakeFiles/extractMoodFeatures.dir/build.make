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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build

# Include any dependencies generated for this target.
include apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/depend.make

# Include the progress variables for this target.
include apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/progress.make

# Include the compile flags for this target's objects.
include apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/flags.make

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o: apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/flags.make
apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o: /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/src/apps/mirex2009_tsunoo/extractMoodFeatures.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o"
	cd /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build/apps/mirex2009_tsunoo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o -c /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/src/apps/mirex2009_tsunoo/extractMoodFeatures.cpp

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.i"
	cd /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build/apps/mirex2009_tsunoo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/src/apps/mirex2009_tsunoo/extractMoodFeatures.cpp > CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.i

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.s"
	cd /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build/apps/mirex2009_tsunoo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/src/apps/mirex2009_tsunoo/extractMoodFeatures.cpp -o CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.s

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o.requires:
.PHONY : apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o.requires

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o.provides: apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o.requires
	$(MAKE) -f apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/build.make apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o.provides.build
.PHONY : apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o.provides

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o.provides.build: apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o

# Object files for target extractMoodFeatures
extractMoodFeatures_OBJECTS = \
"CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o"

# External object files for target extractMoodFeatures
extractMoodFeatures_EXTERNAL_OBJECTS =

bin/extractMoodFeatures: apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o
bin/extractMoodFeatures: lib/libmarsyas.so
bin/extractMoodFeatures: /usr/lib/x86_64-linux-gnu/libasound.so
bin/extractMoodFeatures: apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/build.make
bin/extractMoodFeatures: apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/extractMoodFeatures"
	cd /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build/apps/mirex2009_tsunoo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/extractMoodFeatures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/build: bin/extractMoodFeatures
.PHONY : apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/build

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/requires: apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/extractMoodFeatures.cpp.o.requires
.PHONY : apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/requires

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/clean:
	cd /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build/apps/mirex2009_tsunoo && $(CMAKE_COMMAND) -P CMakeFiles/extractMoodFeatures.dir/cmake_clean.cmake
.PHONY : apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/clean

apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/depend:
	cd /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/src /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/src/apps/mirex2009_tsunoo /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build/apps/mirex2009_tsunoo /home/oshogupta/Desktop/HLTCPro/marsyas-0.4.8/build/apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/mirex2009_tsunoo/CMakeFiles/extractMoodFeatures.dir/depend

