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
include CMakeFiles/LibEmbedded.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LibEmbedded.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LibEmbedded.dir/flags.make

CMakeFiles/LibEmbedded.dir/src/UI.c.o: CMakeFiles/LibEmbedded.dir/flags.make
CMakeFiles/LibEmbedded.dir/src/UI.c.o: ../src/UI.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vany/FFF_UnitTest/example/embedded_ui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/LibEmbedded.dir/src/UI.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LibEmbedded.dir/src/UI.c.o -c /home/vany/FFF_UnitTest/example/embedded_ui/src/UI.c

CMakeFiles/LibEmbedded.dir/src/UI.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LibEmbedded.dir/src/UI.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vany/FFF_UnitTest/example/embedded_ui/src/UI.c > CMakeFiles/LibEmbedded.dir/src/UI.c.i

CMakeFiles/LibEmbedded.dir/src/UI.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LibEmbedded.dir/src/UI.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vany/FFF_UnitTest/example/embedded_ui/src/UI.c -o CMakeFiles/LibEmbedded.dir/src/UI.c.s

# Object files for target LibEmbedded
LibEmbedded_OBJECTS = \
"CMakeFiles/LibEmbedded.dir/src/UI.c.o"

# External object files for target LibEmbedded
LibEmbedded_EXTERNAL_OBJECTS =

libLibEmbedded.a: CMakeFiles/LibEmbedded.dir/src/UI.c.o
libLibEmbedded.a: CMakeFiles/LibEmbedded.dir/build.make
libLibEmbedded.a: CMakeFiles/LibEmbedded.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vany/FFF_UnitTest/example/embedded_ui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libLibEmbedded.a"
	$(CMAKE_COMMAND) -P CMakeFiles/LibEmbedded.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LibEmbedded.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LibEmbedded.dir/build: libLibEmbedded.a

.PHONY : CMakeFiles/LibEmbedded.dir/build

CMakeFiles/LibEmbedded.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LibEmbedded.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LibEmbedded.dir/clean

CMakeFiles/LibEmbedded.dir/depend:
	cd /home/vany/FFF_UnitTest/example/embedded_ui/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vany/FFF_UnitTest/example/embedded_ui /home/vany/FFF_UnitTest/example/embedded_ui /home/vany/FFF_UnitTest/example/embedded_ui/build /home/vany/FFF_UnitTest/example/embedded_ui/build /home/vany/FFF_UnitTest/example/embedded_ui/build/CMakeFiles/LibEmbedded.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LibEmbedded.dir/depend
