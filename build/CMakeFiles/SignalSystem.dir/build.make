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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.22.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.22.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rileyfischer/Documents/dev/systems/signal-system

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rileyfischer/Documents/dev/systems/signal-system/build

# Include any dependencies generated for this target.
include CMakeFiles/SignalSystem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SignalSystem.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SignalSystem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SignalSystem.dir/flags.make

CMakeFiles/SignalSystem.dir/src/main.cpp.o: CMakeFiles/SignalSystem.dir/flags.make
CMakeFiles/SignalSystem.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/SignalSystem.dir/src/main.cpp.o: CMakeFiles/SignalSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rileyfischer/Documents/dev/systems/signal-system/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SignalSystem.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SignalSystem.dir/src/main.cpp.o -MF CMakeFiles/SignalSystem.dir/src/main.cpp.o.d -o CMakeFiles/SignalSystem.dir/src/main.cpp.o -c /Users/rileyfischer/Documents/dev/systems/signal-system/src/main.cpp

CMakeFiles/SignalSystem.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SignalSystem.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rileyfischer/Documents/dev/systems/signal-system/src/main.cpp > CMakeFiles/SignalSystem.dir/src/main.cpp.i

CMakeFiles/SignalSystem.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SignalSystem.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rileyfischer/Documents/dev/systems/signal-system/src/main.cpp -o CMakeFiles/SignalSystem.dir/src/main.cpp.s

CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o: CMakeFiles/SignalSystem.dir/flags.make
CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o: ../src/dispatcher.cpp
CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o: CMakeFiles/SignalSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rileyfischer/Documents/dev/systems/signal-system/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o -MF CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o.d -o CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o -c /Users/rileyfischer/Documents/dev/systems/signal-system/src/dispatcher.cpp

CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rileyfischer/Documents/dev/systems/signal-system/src/dispatcher.cpp > CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.i

CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rileyfischer/Documents/dev/systems/signal-system/src/dispatcher.cpp -o CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.s

# Object files for target SignalSystem
SignalSystem_OBJECTS = \
"CMakeFiles/SignalSystem.dir/src/main.cpp.o" \
"CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o"

# External object files for target SignalSystem
SignalSystem_EXTERNAL_OBJECTS =

SignalSystem: CMakeFiles/SignalSystem.dir/src/main.cpp.o
SignalSystem: CMakeFiles/SignalSystem.dir/src/dispatcher.cpp.o
SignalSystem: CMakeFiles/SignalSystem.dir/build.make
SignalSystem: CMakeFiles/SignalSystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rileyfischer/Documents/dev/systems/signal-system/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable SignalSystem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SignalSystem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SignalSystem.dir/build: SignalSystem
.PHONY : CMakeFiles/SignalSystem.dir/build

CMakeFiles/SignalSystem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SignalSystem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SignalSystem.dir/clean

CMakeFiles/SignalSystem.dir/depend:
	cd /Users/rileyfischer/Documents/dev/systems/signal-system/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rileyfischer/Documents/dev/systems/signal-system /Users/rileyfischer/Documents/dev/systems/signal-system /Users/rileyfischer/Documents/dev/systems/signal-system/build /Users/rileyfischer/Documents/dev/systems/signal-system/build /Users/rileyfischer/Documents/dev/systems/signal-system/build/CMakeFiles/SignalSystem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SignalSystem.dir/depend
