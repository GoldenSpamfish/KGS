# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Programming\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Programming\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Programming\C\KGS\TransmitterTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Programming\C\KGS\TransmitterTest\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/nano_RF24.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nano_RF24.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nano_RF24.dir/flags.make

CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.obj: CMakeFiles/nano_RF24.dir/flags.make
CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.obj: ../RF24/RF24.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Programming\C\KGS\TransmitterTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.obj"
	C:\PROGRA~2\Arduino\hardware\tools\avr\bin\AVR-G_~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\nano_RF24.dir\RF24\RF24.cpp.obj -c D:\Programming\C\KGS\TransmitterTest\RF24\RF24.cpp

CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.i"
	C:\PROGRA~2\Arduino\hardware\tools\avr\bin\AVR-G_~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Programming\C\KGS\TransmitterTest\RF24\RF24.cpp > CMakeFiles\nano_RF24.dir\RF24\RF24.cpp.i

CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.s"
	C:\PROGRA~2\Arduino\hardware\tools\avr\bin\AVR-G_~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Programming\C\KGS\TransmitterTest\RF24\RF24.cpp -o CMakeFiles\nano_RF24.dir\RF24\RF24.cpp.s

# Object files for target nano_RF24
nano_RF24_OBJECTS = \
"CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.obj"

# External object files for target nano_RF24
nano_RF24_EXTERNAL_OBJECTS =

libnano_RF24.a: CMakeFiles/nano_RF24.dir/RF24/RF24.cpp.obj
libnano_RF24.a: CMakeFiles/nano_RF24.dir/build.make
libnano_RF24.a: CMakeFiles/nano_RF24.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Programming\C\KGS\TransmitterTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libnano_RF24.a"
	$(CMAKE_COMMAND) -P CMakeFiles\nano_RF24.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\nano_RF24.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nano_RF24.dir/build: libnano_RF24.a

.PHONY : CMakeFiles/nano_RF24.dir/build

CMakeFiles/nano_RF24.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\nano_RF24.dir\cmake_clean.cmake
.PHONY : CMakeFiles/nano_RF24.dir/clean

CMakeFiles/nano_RF24.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Programming\C\KGS\TransmitterTest D:\Programming\C\KGS\TransmitterTest D:\Programming\C\KGS\TransmitterTest\cmake-build-debug D:\Programming\C\KGS\TransmitterTest\cmake-build-debug D:\Programming\C\KGS\TransmitterTest\cmake-build-debug\CMakeFiles\nano_RF24.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nano_RF24.dir/depend
