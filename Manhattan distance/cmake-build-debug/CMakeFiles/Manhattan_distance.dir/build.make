# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Manhattan_distance.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Manhattan_distance.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Manhattan_distance.dir/flags.make

CMakeFiles/Manhattan_distance.dir/main.cpp.obj: CMakeFiles/Manhattan_distance.dir/flags.make
CMakeFiles/Manhattan_distance.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Manhattan_distance.dir/main.cpp.obj"
	C:\PROGRA~1\MinGW\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Manhattan_distance.dir\main.cpp.obj -c "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\main.cpp"

CMakeFiles/Manhattan_distance.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Manhattan_distance.dir/main.cpp.i"
	C:\PROGRA~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\main.cpp" > CMakeFiles\Manhattan_distance.dir\main.cpp.i

CMakeFiles/Manhattan_distance.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Manhattan_distance.dir/main.cpp.s"
	C:\PROGRA~1\MinGW\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\main.cpp" -o CMakeFiles\Manhattan_distance.dir\main.cpp.s

# Object files for target Manhattan_distance
Manhattan_distance_OBJECTS = \
"CMakeFiles/Manhattan_distance.dir/main.cpp.obj"

# External object files for target Manhattan_distance
Manhattan_distance_EXTERNAL_OBJECTS =

Manhattan_distance.exe: CMakeFiles/Manhattan_distance.dir/main.cpp.obj
Manhattan_distance.exe: CMakeFiles/Manhattan_distance.dir/build.make
Manhattan_distance.exe: CMakeFiles/Manhattan_distance.dir/linklibs.rsp
Manhattan_distance.exe: CMakeFiles/Manhattan_distance.dir/objects1.rsp
Manhattan_distance.exe: CMakeFiles/Manhattan_distance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Manhattan_distance.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Manhattan_distance.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Manhattan_distance.dir/build: Manhattan_distance.exe

.PHONY : CMakeFiles/Manhattan_distance.dir/build

CMakeFiles/Manhattan_distance.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Manhattan_distance.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Manhattan_distance.dir/clean

CMakeFiles/Manhattan_distance.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance" "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance" "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\cmake-build-debug" "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\cmake-build-debug" "C:\Users\tabea\CLionProjects\AdventOfCode2018\Manhattan distance\cmake-build-debug\CMakeFiles\Manhattan_distance.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Manhattan_distance.dir/depend
