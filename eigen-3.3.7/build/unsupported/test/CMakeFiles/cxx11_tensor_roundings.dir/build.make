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
include unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/compiler_depend.make

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/progress.make

# Include the compile flags for this target's objects.
include unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/flags.make

unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o: unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/flags.make
unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o: ../unsupported/test/cxx11_tensor_roundings.cpp
unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o: unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o -MF CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o.d -o CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o -c /home/yanwei/第二次任务喵/task/eigen-3.3.7/unsupported/test/cxx11_tensor_roundings.cpp

unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.i"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yanwei/第二次任务喵/task/eigen-3.3.7/unsupported/test/cxx11_tensor_roundings.cpp > CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.i

unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.s"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yanwei/第二次任务喵/task/eigen-3.3.7/unsupported/test/cxx11_tensor_roundings.cpp -o CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.s

# Object files for target cxx11_tensor_roundings
cxx11_tensor_roundings_OBJECTS = \
"CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o"

# External object files for target cxx11_tensor_roundings
cxx11_tensor_roundings_EXTERNAL_OBJECTS =

unsupported/test/cxx11_tensor_roundings: unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/cxx11_tensor_roundings.cpp.o
unsupported/test/cxx11_tensor_roundings: unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/build.make
unsupported/test/cxx11_tensor_roundings: unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cxx11_tensor_roundings"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cxx11_tensor_roundings.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/build: unsupported/test/cxx11_tensor_roundings
.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/build

unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/clean:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/cxx11_tensor_roundings.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/clean

unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/depend:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yanwei/第二次任务喵/task/eigen-3.3.7 /home/yanwei/第二次任务喵/task/eigen-3.3.7/unsupported/test /home/yanwei/第二次任务喵/task/eigen-3.3.7/build /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/cxx11_tensor_roundings.dir/depend

