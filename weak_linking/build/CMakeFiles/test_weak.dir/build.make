# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /home/vany/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/vany/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vany/FFF_UnitTest/example/weak_linking

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vany/FFF_UnitTest/example/weak_linking/build

# Include any dependencies generated for this target.
include CMakeFiles/test_weak.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_weak.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_weak.dir/flags.make

CMakeFiles/test_weak.dir/src/test.cpp.o: CMakeFiles/test_weak.dir/flags.make
CMakeFiles/test_weak.dir/src/test.cpp.o: ../src/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vany/FFF_UnitTest/example/weak_linking/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_weak.dir/src/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_weak.dir/src/test.cpp.o -c /home/vany/FFF_UnitTest/example/weak_linking/src/test.cpp

CMakeFiles/test_weak.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_weak.dir/src/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vany/FFF_UnitTest/example/weak_linking/src/test.cpp > CMakeFiles/test_weak.dir/src/test.cpp.i

CMakeFiles/test_weak.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_weak.dir/src/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vany/FFF_UnitTest/example/weak_linking/src/test.cpp -o CMakeFiles/test_weak.dir/src/test.cpp.s

# Object files for target test_weak
test_weak_OBJECTS = \
"CMakeFiles/test_weak.dir/src/test.cpp.o"

# External object files for target test_weak
test_weak_EXTERNAL_OBJECTS =

test_weak: CMakeFiles/test_weak.dir/src/test.cpp.o
test_weak: CMakeFiles/test_weak.dir/build.make
test_weak: libLibWeak.a
test_weak: CMakeFiles/test_weak.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vany/FFF_UnitTest/example/weak_linking/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_weak"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_weak.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_weak.dir/build: test_weak

.PHONY : CMakeFiles/test_weak.dir/build

CMakeFiles/test_weak.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_weak.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_weak.dir/clean

CMakeFiles/test_weak.dir/depend:
	cd /home/vany/FFF_UnitTest/example/weak_linking/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vany/FFF_UnitTest/example/weak_linking /home/vany/FFF_UnitTest/example/weak_linking /home/vany/FFF_UnitTest/example/weak_linking/build /home/vany/FFF_UnitTest/example/weak_linking/build /home/vany/FFF_UnitTest/example/weak_linking/build/CMakeFiles/test_weak.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_weak.dir/depend

