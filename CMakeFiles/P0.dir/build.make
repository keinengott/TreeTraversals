# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/robertkaufman/compiler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robertkaufman/compiler

# Include any dependencies generated for this target.
include CMakeFiles/P0.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/P0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/P0.dir/flags.make

CMakeFiles/P0.dir/main.cpp.o: CMakeFiles/P0.dir/flags.make
CMakeFiles/P0.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robertkaufman/compiler/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/P0.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/P0.dir/main.cpp.o -c /home/robertkaufman/compiler/main.cpp

CMakeFiles/P0.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/P0.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robertkaufman/compiler/main.cpp > CMakeFiles/P0.dir/main.cpp.i

CMakeFiles/P0.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/P0.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robertkaufman/compiler/main.cpp -o CMakeFiles/P0.dir/main.cpp.s

CMakeFiles/P0.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/P0.dir/main.cpp.o.requires

CMakeFiles/P0.dir/main.cpp.o.provides: CMakeFiles/P0.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/P0.dir/build.make CMakeFiles/P0.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/P0.dir/main.cpp.o.provides

CMakeFiles/P0.dir/main.cpp.o.provides.build: CMakeFiles/P0.dir/main.cpp.o


# Object files for target P0
P0_OBJECTS = \
"CMakeFiles/P0.dir/main.cpp.o"

# External object files for target P0
P0_EXTERNAL_OBJECTS =

P0: CMakeFiles/P0.dir/main.cpp.o
P0: CMakeFiles/P0.dir/build.make
P0: libtree.a
P0: CMakeFiles/P0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/robertkaufman/compiler/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable P0"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/P0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/P0.dir/build: P0

.PHONY : CMakeFiles/P0.dir/build

CMakeFiles/P0.dir/requires: CMakeFiles/P0.dir/main.cpp.o.requires

.PHONY : CMakeFiles/P0.dir/requires

CMakeFiles/P0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/P0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/P0.dir/clean

CMakeFiles/P0.dir/depend:
	cd /home/robertkaufman/compiler && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robertkaufman/compiler /home/robertkaufman/compiler /home/robertkaufman/compiler /home/robertkaufman/compiler /home/robertkaufman/compiler/CMakeFiles/P0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/P0.dir/depend
