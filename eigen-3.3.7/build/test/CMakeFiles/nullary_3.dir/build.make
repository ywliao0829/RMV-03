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
include test/CMakeFiles/nullary_3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/nullary_3.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/nullary_3.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/nullary_3.dir/flags.make

test/CMakeFiles/nullary_3.dir/nullary.cpp.o: test/CMakeFiles/nullary_3.dir/flags.make
test/CMakeFiles/nullary_3.dir/nullary.cpp.o: ../test/nullary.cpp
test/CMakeFiles/nullary_3.dir/nullary.cpp.o: test/CMakeFiles/nullary_3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/nullary_3.dir/nullary.cpp.o"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/nullary_3.dir/nullary.cpp.o -MF CMakeFiles/nullary_3.dir/nullary.cpp.o.d -o CMakeFiles/nullary_3.dir/nullary.cpp.o -c /home/yanwei/第二次任务喵/task/eigen-3.3.7/test/nullary.cpp

test/CMakeFiles/nullary_3.dir/nullary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nullary_3.dir/nullary.cpp.i"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yanwei/第二次任务喵/task/eigen-3.3.7/test/nullary.cpp > CMakeFiles/nullary_3.dir/nullary.cpp.i

test/CMakeFiles/nullary_3.dir/nullary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nullary_3.dir/nullary.cpp.s"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yanwei/第二次任务喵/task/eigen-3.3.7/test/nullary.cpp -o CMakeFiles/nullary_3.dir/nullary.cpp.s

# Object files for target nullary_3
nullary_3_OBJECTS = \
"CMakeFiles/nullary_3.dir/nullary.cpp.o"

# External object files for target nullary_3
nullary_3_EXTERNAL_OBJECTS =

test/nullary_3: test/CMakeFiles/nullary_3.dir/nullary.cpp.o
test/nullary_3: test/CMakeFiles/nullary_3.dir/build.make
test/nullary_3: test/CMakeFiles/nullary_3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nullary_3"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nullary_3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/nullary_3.dir/build: test/nullary_3
.PHONY : test/CMakeFiles/nullary_3.dir/build

test/CMakeFiles/nullary_3.dir/clean:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && $(CMAKE_COMMAND) -P CMakeFiles/nullary_3.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/nullary_3.dir/clean

test/CMakeFiles/nullary_3.dir/depend:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yanwei/第二次任务喵/task/eigen-3.3.7 /home/yanwei/第二次任务喵/task/eigen-3.3.7/test /home/yanwei/第二次任务喵/task/eigen-3.3.7/build /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test/CMakeFiles/nullary_3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/nullary_3.dir/depend

