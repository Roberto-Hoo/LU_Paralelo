# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020_3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020_3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LU_Paralelo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LU_Paralelo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LU_Paralelo.dir/flags.make

CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.obj: CMakeFiles/LU_Paralelo.dir/flags.make
CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.obj: ../parallelLU.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.obj"
	C:\msys64\mingw64\bin\clang++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\LU_Paralelo.dir\parallelLU.cpp.obj -c F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\parallelLU.cpp

CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.i"
	C:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\parallelLU.cpp > CMakeFiles\LU_Paralelo.dir\parallelLU.cpp.i

CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.s"
	C:\msys64\mingw64\bin\clang++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\parallelLU.cpp -o CMakeFiles\LU_Paralelo.dir\parallelLU.cpp.s

# Object files for target LU_Paralelo
LU_Paralelo_OBJECTS = \
"CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.obj"

# External object files for target LU_Paralelo
LU_Paralelo_EXTERNAL_OBJECTS =

LU_Paralelo.exe: CMakeFiles/LU_Paralelo.dir/parallelLU.cpp.obj
LU_Paralelo.exe: CMakeFiles/LU_Paralelo.dir/build.make
LU_Paralelo.exe: CMakeFiles/LU_Paralelo.dir/linklibs.rsp
LU_Paralelo.exe: CMakeFiles/LU_Paralelo.dir/objects1.rsp
LU_Paralelo.exe: CMakeFiles/LU_Paralelo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LU_Paralelo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LU_Paralelo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LU_Paralelo.dir/build: LU_Paralelo.exe

.PHONY : CMakeFiles/LU_Paralelo.dir/build

CMakeFiles/LU_Paralelo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\LU_Paralelo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/LU_Paralelo.dir/clean

CMakeFiles/LU_Paralelo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\cmake-build-debug F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\cmake-build-debug F:\Programacao\CParalelaUfrgs2020_2\LU_Paralelo\cmake-build-debug\CMakeFiles\LU_Paralelo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LU_Paralelo.dir/depend

