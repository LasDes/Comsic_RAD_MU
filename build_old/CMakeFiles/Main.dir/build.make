# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/macosx/Downloads/Cosmic-Distribution-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/macosx/Downloads/Cosmic-Distribution-master/build

# Include any dependencies generated for this target.
include CMakeFiles/Main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Main.dir/flags.make

CMakeFiles/Main.dir/src/main.cc.o: CMakeFiles/Main.dir/flags.make
CMakeFiles/Main.dir/src/main.cc.o: ../src/main.cc
CMakeFiles/Main.dir/src/main.cc.o: CMakeFiles/Main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macosx/Downloads/Cosmic-Distribution-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Main.dir/src/main.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Main.dir/src/main.cc.o -MF CMakeFiles/Main.dir/src/main.cc.o.d -o CMakeFiles/Main.dir/src/main.cc.o -c /Users/macosx/Downloads/Cosmic-Distribution-master/src/main.cc

CMakeFiles/Main.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Main.dir/src/main.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macosx/Downloads/Cosmic-Distribution-master/src/main.cc > CMakeFiles/Main.dir/src/main.cc.i

CMakeFiles/Main.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Main.dir/src/main.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macosx/Downloads/Cosmic-Distribution-master/src/main.cc -o CMakeFiles/Main.dir/src/main.cc.s

# Object files for target Main
Main_OBJECTS = \
"CMakeFiles/Main.dir/src/main.cc.o"

# External object files for target Main
Main_EXTERNAL_OBJECTS =

Main: CMakeFiles/Main.dir/src/main.cc.o
Main: CMakeFiles/Main.dir/build.make
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libCore.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libImt.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libRIO.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libNet.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libHist.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libGraf.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libGraf3d.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libGpad.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libROOTDataFrame.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libTree.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libTreePlayer.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libRint.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libPostscript.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libMatrix.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libPhysics.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libMathCore.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libThread.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libMultiProc.so
Main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libROOTVecOps.so
Main: CMakeFiles/Main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/macosx/Downloads/Cosmic-Distribution-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Main.dir/build: Main
.PHONY : CMakeFiles/Main.dir/build

CMakeFiles/Main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Main.dir/clean

CMakeFiles/Main.dir/depend:
	cd /Users/macosx/Downloads/Cosmic-Distribution-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/macosx/Downloads/Cosmic-Distribution-master /Users/macosx/Downloads/Cosmic-Distribution-master /Users/macosx/Downloads/Cosmic-Distribution-master/build /Users/macosx/Downloads/Cosmic-Distribution-master/build /Users/macosx/Downloads/Cosmic-Distribution-master/build/CMakeFiles/Main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Main.dir/depend

