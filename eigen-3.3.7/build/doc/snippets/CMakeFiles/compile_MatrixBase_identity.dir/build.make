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
include doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compiler_depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/flags.make

doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o: doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/flags.make
doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o: doc/snippets/compile_MatrixBase_identity.cpp
doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o: ../doc/snippets/MatrixBase_identity.cpp
doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o: doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o -MF CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o.d -o CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o -c /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets/compile_MatrixBase_identity.cpp

doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.i"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets/compile_MatrixBase_identity.cpp > CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.i

doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.s"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets/compile_MatrixBase_identity.cpp -o CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.s

# Object files for target compile_MatrixBase_identity
compile_MatrixBase_identity_OBJECTS = \
"CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o"

# External object files for target compile_MatrixBase_identity
compile_MatrixBase_identity_EXTERNAL_OBJECTS =

doc/snippets/compile_MatrixBase_identity: doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/compile_MatrixBase_identity.cpp.o
doc/snippets/compile_MatrixBase_identity: doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/build.make
doc/snippets/compile_MatrixBase_identity: doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_MatrixBase_identity"
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_MatrixBase_identity.dir/link.txt --verbose=$(VERBOSE)
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets && ./compile_MatrixBase_identity >/home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets/MatrixBase_identity.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/build: doc/snippets/compile_MatrixBase_identity
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/build

doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/clean:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_MatrixBase_identity.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/clean

doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/depend:
	cd /home/yanwei/第二次任务喵/task/eigen-3.3.7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yanwei/第二次任务喵/task/eigen-3.3.7 /home/yanwei/第二次任务喵/task/eigen-3.3.7/doc/snippets /home/yanwei/第二次任务喵/task/eigen-3.3.7/build /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets /home/yanwei/第二次任务喵/task/eigen-3.3.7/build/doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_identity.dir/depend

