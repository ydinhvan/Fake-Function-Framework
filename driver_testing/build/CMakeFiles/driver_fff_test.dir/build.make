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
CMAKE_SOURCE_DIR = /home/vany/FFF_UnitTest/example/driver_testing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vany/FFF_UnitTest/example/driver_testing/build

# Include any dependencies generated for this target.
include CMakeFiles/driver_fff_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/driver_fff_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/driver_fff_test.dir/flags.make

CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.o: CMakeFiles/driver_fff_test.dir/flags.make
CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.o: ../src/driver.test.fff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vany/FFF_UnitTest/example/driver_testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.o -c /home/vany/FFF_UnitTest/example/driver_testing/src/driver.test.fff.cpp

CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vany/FFF_UnitTest/example/driver_testing/src/driver.test.fff.cpp > CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.i

CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vany/FFF_UnitTest/example/driver_testing/src/driver.test.fff.cpp -o CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.s

# Object files for target driver_fff_test
driver_fff_test_OBJECTS = \
"CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.o"

# External object files for target driver_fff_test
driver_fff_test_EXTERNAL_OBJECTS =

driver_fff_test: CMakeFiles/driver_fff_test.dir/src/driver.test.fff.cpp.o
driver_fff_test: CMakeFiles/driver_fff_test.dir/build.make
driver_fff_test: libLibDriver.a
driver_fff_test: CMakeFiles/driver_fff_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vany/FFF_UnitTest/example/driver_testing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable driver_fff_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/driver_fff_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/driver_fff_test.dir/build: driver_fff_test

.PHONY : CMakeFiles/driver_fff_test.dir/build

CMakeFiles/driver_fff_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/driver_fff_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/driver_fff_test.dir/clean

CMakeFiles/driver_fff_test.dir/depend:
	cd /home/vany/FFF_UnitTest/example/driver_testing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vany/FFF_UnitTest/example/driver_testing /home/vany/FFF_UnitTest/example/driver_testing /home/vany/FFF_UnitTest/example/driver_testing/build /home/vany/FFF_UnitTest/example/driver_testing/build /home/vany/FFF_UnitTest/example/driver_testing/build/CMakeFiles/driver_fff_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/driver_fff_test.dir/depend
