# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yanwei/第二次任务喵/task/eigen-3.3.7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yanwei/第二次任务喵/task/eigen-3.3.7/build

# Include any dependencies generated for this target.
include unsupported/test/CMakeFiles/matrix_power_1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include unsupported/test/CMakeFiles/matrix_power_1.dir/compiler_depend.make

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/matrix_power_1.dir/progress.make

# Include the compile flags for this target's objects.
include unsupported/test/CMakeFiles/matrix_power_1.dir/flags.make

unsupported/test/CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o: unsupported/test/CMakeFiles/matrix_power_1.dir/flags.make
unsupported/test/CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o: ../unsupported/test/matrix_power.cpp
unsupported/test/CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o: unsupported/test/CMakeFiles/matrix_power_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unsupported/test/CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT unsupported/test/CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o -MF CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o.d -o CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o -c /home/yanwei/第二次任务喵/task/eigen-3.3.7/unsupported/test/matrix_power.cpp

unsupported/test/CMakeFiles/matrix_power_1.dir/matrix_power.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_power_1.dir/matrix_power.cpp.i"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yanwei/第二次任务喵/task/eigen-3.3.7/unsupported/test/matrix_power.cpp > CMakeFiles/matrix_power_1.dir/matrix_power.cpp.i

unsupported/test/CMakeFiles/matrix_power_1.dir/matrix_power.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_power_1.dir/matrix_power.cpp.s"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yanwei/第二次任务喵/task/eigen-3.3.7/unsupported/test/matrix_power.cpp -o CMakeFiles/matrix_power_1.dir/matrix_power.cpp.s

# Object files for target matrix_power_1
matrix_power_1_OBJECTS = \
"CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o"

# External object files for target matrix_power_1
matrix_power_1_EXTERNAL_OBJECTS =

unsupported/test/matrix_power_1: unsupported/test/CMakeFiles/matrix_power_1.dir/matrix_power.cpp.o
unsupported/test/matrix_power_1: unsupported/test/CMakeFiles/matrix_power_1.dir/build.make
unsupported/test/matrix_power_1: unsupported/test/CMakeFiles/matrix_power_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable matrix_power_1"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_power_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/matrix_power_1.dir/build: unsupported/test/matrix_power_1
.PHONY : unsupported/test/CMakeFiles/matrix_power_1.dir/build

unsupported/test/CMakeFiles/matrix_power_1.dir/clean:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/matrix_power_1.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/matrix_power_1.dir/clean

unsupported/test/CMakeFiles/matrix_power_1.dir/depend:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yanwei/第二次任务喵/task/eigen-3.3.7 /home/yanwei/第二次任务喵/task/eigen-3.3.7/unsupported/test /home/yanwei/第二次任务喵/task/eigen-3.3.7/build /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test/CMakeFiles/matrix_power_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/matrix_power_1.dir/depend

