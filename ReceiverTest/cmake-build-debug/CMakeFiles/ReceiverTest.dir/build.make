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
CMAKE_SOURCE_DIR = D:\Programming\C\KGS\ReceiverTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Programming\C\KGS\ReceiverTest\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ReceiverTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ReceiverTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ReceiverTest.dir/flags.make

ReceiverTest_receiver_test.ino.cpp: ../receiver_test.ino
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Programming\C\KGS\ReceiverTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Regnerating receiver_test.ino Sketch"
	"D:\Programming\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" D:/Programming/C/KGS/ReceiverTest

CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.obj: CMakeFiles/ReceiverTest.dir/flags.make
CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.obj: ReceiverTest_receiver_test.ino.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Programming\C\KGS\ReceiverTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.obj"
	C:\PROGRA~2\Arduino\hardware\tools\avr\bin\AVR-G_~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ReceiverTest.dir\ReceiverTest_receiver_test.ino.cpp.obj -c D:\Programming\C\KGS\ReceiverTest\cmake-build-debug\ReceiverTest_receiver_test.ino.cpp

CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.i"
	C:\PROGRA~2\Arduino\hardware\tools\avr\bin\AVR-G_~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Programming\C\KGS\ReceiverTest\cmake-build-debug\ReceiverTest_receiver_test.ino.cpp > CMakeFiles\ReceiverTest.dir\ReceiverTest_receiver_test.ino.cpp.i

CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.s"
	C:\PROGRA~2\Arduino\hardware\tools\avr\bin\AVR-G_~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Programming\C\KGS\ReceiverTest\cmake-build-debug\ReceiverTest_receiver_test.ino.cpp -o CMakeFiles\ReceiverTest.dir\ReceiverTest_receiver_test.ino.cpp.s

# Object files for target ReceiverTest
ReceiverTest_OBJECTS = \
"CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.obj"

# External object files for target ReceiverTest
ReceiverTest_EXTERNAL_OBJECTS =

ReceiverTest.elf: CMakeFiles/ReceiverTest.dir/ReceiverTest_receiver_test.ino.cpp.obj
ReceiverTest.elf: CMakeFiles/ReceiverTest.dir/build.make
ReceiverTest.elf: libnano_SPI.a
ReceiverTest.elf: libnano_nRF24L01.a
ReceiverTest.elf: libnano_RF24.a
ReceiverTest.elf: libnano_RF24_config.a
ReceiverTest.elf: libnano_SPI.a
ReceiverTest.elf: libnano_RF24_arch_config.a
ReceiverTest.elf: libnano_Wire.a
ReceiverTest.elf: libnano_twi.a
ReceiverTest.elf: libnano_Servo.a
ReceiverTest.elf: libnano_ServoTimers.a
ReceiverTest.elf: libnano_CORE.a
ReceiverTest.elf: CMakeFiles/ReceiverTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Programming\C\KGS\ReceiverTest\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ReceiverTest.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ReceiverTest.dir\link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating EEP image"
	"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-objcopy.exe" -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 D:/Programming/C/KGS/ReceiverTest/cmake-build-debug/ReceiverTest.elf D:/Programming/C/KGS/ReceiverTest/cmake-build-debug/ReceiverTest.eep
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating HEX image"
	"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-objcopy.exe" -O ihex -R .eeprom D:/Programming/C/KGS/ReceiverTest/cmake-build-debug/ReceiverTest.elf D:/Programming/C/KGS/ReceiverTest/cmake-build-debug/ReceiverTest.hex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Calculating image size"
	"D:\Programming\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -DFIRMWARE_IMAGE=D:/Programming/C/KGS/ReceiverTest/cmake-build-debug/ReceiverTest.elf -DMCU=atmega328p -DEEPROM_IMAGE=D:/Programming/C/KGS/ReceiverTest/cmake-build-debug/ReceiverTest.eep -P D:/Programming/C/KGS/ReceiverTest/cmake-build-debug/CMakeFiles/FirmwareSize.cmake

# Rule to build all files generated by this target.
CMakeFiles/ReceiverTest.dir/build: ReceiverTest.elf

.PHONY : CMakeFiles/ReceiverTest.dir/build

CMakeFiles/ReceiverTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ReceiverTest.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ReceiverTest.dir/clean

CMakeFiles/ReceiverTest.dir/depend: ReceiverTest_receiver_test.ino.cpp
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Programming\C\KGS\ReceiverTest D:\Programming\C\KGS\ReceiverTest D:\Programming\C\KGS\ReceiverTest\cmake-build-debug D:\Programming\C\KGS\ReceiverTest\cmake-build-debug D:\Programming\C\KGS\ReceiverTest\cmake-build-debug\CMakeFiles\ReceiverTest.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ReceiverTest.dir/depend

