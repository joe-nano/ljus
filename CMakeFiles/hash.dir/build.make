# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cents/ljus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cents/ljus

# Include any dependencies generated for this target.
include CMakeFiles/hash.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hash.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hash.dir/flags.make

CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o: CMakeFiles/hash.dir/flags.make
CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o: ljus/hash/Hash.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cents/ljus/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o -c /home/cents/ljus/ljus/hash/Hash.cpp

CMakeFiles/hash.dir/ljus/hash/Hash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hash.dir/ljus/hash/Hash.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cents/ljus/ljus/hash/Hash.cpp > CMakeFiles/hash.dir/ljus/hash/Hash.cpp.i

CMakeFiles/hash.dir/ljus/hash/Hash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hash.dir/ljus/hash/Hash.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cents/ljus/ljus/hash/Hash.cpp -o CMakeFiles/hash.dir/ljus/hash/Hash.cpp.s

CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o.requires:

.PHONY : CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o.requires

CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o.provides: CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o.requires
	$(MAKE) -f CMakeFiles/hash.dir/build.make CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o.provides.build
.PHONY : CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o.provides

CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o.provides.build: CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o


# Object files for target hash
hash_OBJECTS = \
"CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o"

# External object files for target hash
hash_EXTERNAL_OBJECTS =

libhash.a: CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o
libhash.a: CMakeFiles/hash.dir/build.make
libhash.a: CMakeFiles/hash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cents/ljus/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libhash.a"
	$(CMAKE_COMMAND) -P CMakeFiles/hash.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hash.dir/build: libhash.a

.PHONY : CMakeFiles/hash.dir/build

CMakeFiles/hash.dir/requires: CMakeFiles/hash.dir/ljus/hash/Hash.cpp.o.requires

.PHONY : CMakeFiles/hash.dir/requires

CMakeFiles/hash.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hash.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hash.dir/clean

CMakeFiles/hash.dir/depend:
	cd /home/cents/ljus && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cents/ljus /home/cents/ljus /home/cents/ljus /home/cents/ljus /home/cents/ljus/CMakeFiles/hash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hash.dir/depend

