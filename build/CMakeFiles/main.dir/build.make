# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/build"

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/src/main.cc.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/main.cc.o: /Users/macosx/Desktop/Respaldos\ Código\ G4\ y\ Rad\ Muon\ Github/TT---\ ARCH\ VER\ Muon\ GITHUB/Cosmic-Distribution-master/src/main.cc
CMakeFiles/main.dir/src/main.cc.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/src/main.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/main.cc.o -MF CMakeFiles/main.dir/src/main.cc.o.d -o CMakeFiles/main.dir/src/main.cc.o -c "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/src/main.cc"

CMakeFiles/main.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/src/main.cc" > CMakeFiles/main.dir/src/main.cc.i

CMakeFiles/main.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/src/main.cc" -o CMakeFiles/main.dir/src/main.cc.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/src/main.cc.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/src/main.cc.o
main: CMakeFiles/main.dir/build.make
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libCore.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libImt.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libRIO.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libNet.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libHist.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libGraf.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libGraf3d.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libGpad.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libROOTDataFrame.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libTree.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libTreePlayer.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libRint.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libPostscript.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libMatrix.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libPhysics.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libMathCore.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libThread.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libMultiProc.so
main: /opt/homebrew/Cellar/root/6.26.06_1/lib/root/libROOTVecOps.so
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master" "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master" "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/build" "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/build" "/Users/macosx/Desktop/Respaldos Código G4 y Rad Muon Github/TT--- ARCH VER Muon GITHUB/Cosmic-Distribution-master/build/CMakeFiles/main.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend
