# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /snap/clion/112/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/112/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Virus_Spreading_Simulation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Virus_Spreading_Simulation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Virus_Spreading_Simulation.dir/flags.make

CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.o: CMakeFiles/Virus_Spreading_Simulation.dir/flags.make
CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.o -c /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/main.cpp

CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/main.cpp > CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.i

CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/main.cpp -o CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.s

CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.o: CMakeFiles/Virus_Spreading_Simulation.dir/flags.make
CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.o: ../Region.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.o -c /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/Region.cpp

CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/Region.cpp > CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.i

CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/Region.cpp -o CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.s

# Object files for target Virus_Spreading_Simulation
Virus_Spreading_Simulation_OBJECTS = \
"CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.o" \
"CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.o"

# External object files for target Virus_Spreading_Simulation
Virus_Spreading_Simulation_EXTERNAL_OBJECTS =

Virus_Spreading_Simulation: CMakeFiles/Virus_Spreading_Simulation.dir/main.cpp.o
Virus_Spreading_Simulation: CMakeFiles/Virus_Spreading_Simulation.dir/Region.cpp.o
Virus_Spreading_Simulation: CMakeFiles/Virus_Spreading_Simulation.dir/build.make
Virus_Spreading_Simulation: CMakeFiles/Virus_Spreading_Simulation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Virus_Spreading_Simulation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Virus_Spreading_Simulation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Virus_Spreading_Simulation.dir/build: Virus_Spreading_Simulation

.PHONY : CMakeFiles/Virus_Spreading_Simulation.dir/build

CMakeFiles/Virus_Spreading_Simulation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Virus_Spreading_Simulation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Virus_Spreading_Simulation.dir/clean

CMakeFiles/Virus_Spreading_Simulation.dir/depend:
	cd /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/cmake-build-debug /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/cmake-build-debug /home/szymon/Pulpit/Programowanie/C++/Virus-Spreading-Simulation/cmake-build-debug/CMakeFiles/Virus_Spreading_Simulation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Virus_Spreading_Simulation.dir/depend

