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
include test/CMakeFiles/ctorleak.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/ctorleak.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/ctorleak.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/ctorleak.dir/flags.make

test/CMakeFiles/ctorleak.dir/ctorleak.cpp.o: test/CMakeFiles/ctorleak.dir/flags.make
test/CMakeFiles/ctorleak.dir/ctorleak.cpp.o: ../test/ctorleak.cpp
test/CMakeFiles/ctorleak.dir/ctorleak.cpp.o: test/CMakeFiles/ctorleak.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/ctorleak.dir/ctorleak.cpp.o"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/ctorleak.dir/ctorleak.cpp.o -MF CMakeFiles/ctorleak.dir/ctorleak.cpp.o.d -o CMakeFiles/ctorleak.dir/ctorleak.cpp.o -c /home/yanwei/第二次任务喵/task/eigen-3.3.7/test/ctorleak.cpp

test/CMakeFiles/ctorleak.dir/ctorleak.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ctorleak.dir/ctorleak.cpp.i"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yanwei/第二次任务喵/task/eigen-3.3.7/test/ctorleak.cpp > CMakeFiles/ctorleak.dir/ctorleak.cpp.i

test/CMakeFiles/ctorleak.dir/ctorleak.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ctorleak.dir/ctorleak.cpp.s"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yanwei/第二次任务喵/task/eigen-3.3.7/test/ctorleak.cpp -o CMakeFiles/ctorleak.dir/ctorleak.cpp.s

# Object files for target ctorleak
ctorleak_OBJECTS = \
"CMakeFiles/ctorleak.dir/ctorleak.cpp.o"

# External object files for target ctorleak
ctorleak_EXTERNAL_OBJECTS =

test/ctorleak: test/CMakeFiles/ctorleak.dir/ctorleak.cpp.o
test/ctorleak: test/CMakeFiles/ctorleak.dir/build.make
test/ctorleak: test/CMakeFiles/ctorleak.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ctorleak"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ctorleak.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/ctorleak.dir/build: test/ctorleak
.PHONY : test/CMakeFiles/ctorleak.dir/build

test/CMakeFiles/ctorleak.dir/clean:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test && $(CMAKE_COMMAND) -P CMakeFiles/ctorleak.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/ctorleak.dir/clean

test/CMakeFiles/ctorleak.dir/depend:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yanwei/第二次任务喵/task/eigen-3.3.7 /home/yanwei/第二次任务喵/task/eigen-3.3.7/test /home/yanwei/第二次任务喵/task/eigen-3.3.7/build /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/test/CMakeFiles/ctorleak.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ctorleak.dir/depend

