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
CMAKE_SOURCE_DIR = /home/vany/FFF_UnitTest/example/embedded_ui

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vany/FFF_UnitTest/example/embedded_ui/build

# Include any dependencies generated for this target.
include CMakeFiles/UI_fff_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/UI_fff_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/UI_fff_test.dir/flags.make

CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.o: CMakeFiles/UI_fff_test.dir/flags.make
CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.o: ../src/UI_test_cpp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vany/FFF_UnitTest/example/embedded_ui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.o -c /home/vany/FFF_UnitTest/example/embedded_ui/src/UI_test_cpp.cpp

CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vany/FFF_UnitTest/example/embedded_ui/src/UI_test_cpp.cpp > CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.i

CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vany/FFF_UnitTest/example/embedded_ui/src/UI_test_cpp.cpp -o CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.s

# Object files for target UI_fff_test
UI_fff_test_OBJECTS = \
"CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.o"

# External object files for target UI_fff_test
UI_fff_test_EXTERNAL_OBJECTS =

UI_fff_test: CMakeFiles/UI_fff_test.dir/src/UI_test_cpp.cpp.o
UI_fff_test: CMakeFiles/UI_fff_test.dir/build.make
UI_fff_test: libLibEmbedded.a
UI_fff_test: CMakeFiles/UI_fff_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vany/FFF_UnitTest/example/embedded_ui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable UI_fff_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UI_fff_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/UI_fff_test.dir/build: UI_fff_test

.PHONY : CMakeFiles/UI_fff_test.dir/build

CMakeFiles/UI_fff_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/UI_fff_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/UI_fff_test.dir/clean

CMakeFiles/UI_fff_test.dir/depend:
	cd /home/vany/FFF_UnitTest/example/embedded_ui/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vany/FFF_UnitTest/example/embedded_ui /home/vany/FFF_UnitTest/example/embedded_ui /home/vany/FFF_UnitTest/example/embedded_ui/build /home/vany/FFF_UnitTest/example/embedded_ui/build /home/vany/FFF_UnitTest/example/embedded_ui/build/CMakeFiles/UI_fff_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/UI_fff_test.dir/depend

