# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/catkin/Study/DFX/TMP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/catkin/Study/DFX/TMP

# Include any dependencies generated for this target.
include CMakeFiles/TMP.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/TMP.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/TMP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TMP.dir/flags.make

CMakeFiles/TMP.dir/src/task.cc.o: CMakeFiles/TMP.dir/flags.make
CMakeFiles/TMP.dir/src/task.cc.o: src/task.cc
CMakeFiles/TMP.dir/src/task.cc.o: CMakeFiles/TMP.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/catkin/Study/DFX/TMP/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TMP.dir/src/task.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TMP.dir/src/task.cc.o -MF CMakeFiles/TMP.dir/src/task.cc.o.d -o CMakeFiles/TMP.dir/src/task.cc.o -c /Users/catkin/Study/DFX/TMP/src/task.cc

CMakeFiles/TMP.dir/src/task.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TMP.dir/src/task.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/catkin/Study/DFX/TMP/src/task.cc > CMakeFiles/TMP.dir/src/task.cc.i

CMakeFiles/TMP.dir/src/task.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TMP.dir/src/task.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/catkin/Study/DFX/TMP/src/task.cc -o CMakeFiles/TMP.dir/src/task.cc.s

CMakeFiles/TMP.dir/src/fpga.cc.o: CMakeFiles/TMP.dir/flags.make
CMakeFiles/TMP.dir/src/fpga.cc.o: src/fpga.cc
CMakeFiles/TMP.dir/src/fpga.cc.o: CMakeFiles/TMP.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/catkin/Study/DFX/TMP/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TMP.dir/src/fpga.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TMP.dir/src/fpga.cc.o -MF CMakeFiles/TMP.dir/src/fpga.cc.o.d -o CMakeFiles/TMP.dir/src/fpga.cc.o -c /Users/catkin/Study/DFX/TMP/src/fpga.cc

CMakeFiles/TMP.dir/src/fpga.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TMP.dir/src/fpga.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/catkin/Study/DFX/TMP/src/fpga.cc > CMakeFiles/TMP.dir/src/fpga.cc.i

CMakeFiles/TMP.dir/src/fpga.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TMP.dir/src/fpga.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/catkin/Study/DFX/TMP/src/fpga.cc -o CMakeFiles/TMP.dir/src/fpga.cc.s

# Object files for target TMP
TMP_OBJECTS = \
"CMakeFiles/TMP.dir/src/task.cc.o" \
"CMakeFiles/TMP.dir/src/fpga.cc.o"

# External object files for target TMP
TMP_EXTERNAL_OBJECTS =

lib/libTMP.dylib: CMakeFiles/TMP.dir/src/task.cc.o
lib/libTMP.dylib: CMakeFiles/TMP.dir/src/fpga.cc.o
lib/libTMP.dylib: CMakeFiles/TMP.dir/build.make
lib/libTMP.dylib: CMakeFiles/TMP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/catkin/Study/DFX/TMP/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library lib/libTMP.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TMP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TMP.dir/build: lib/libTMP.dylib
.PHONY : CMakeFiles/TMP.dir/build

CMakeFiles/TMP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TMP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TMP.dir/clean

CMakeFiles/TMP.dir/depend:
	cd /Users/catkin/Study/DFX/TMP && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/catkin/Study/DFX/TMP /Users/catkin/Study/DFX/TMP /Users/catkin/Study/DFX/TMP /Users/catkin/Study/DFX/TMP /Users/catkin/Study/DFX/TMP/CMakeFiles/TMP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TMP.dir/depend
