# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15

# Include any dependencies generated for this target.
include src/CMakeFiles/rp.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/rp.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/rp.dir/flags.make

src/CMakeFiles/rp.dir/rp.cpp.o: src/CMakeFiles/rp.dir/flags.make
src/CMakeFiles/rp.dir/rp.cpp.o: src/rp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/rp.dir/rp.cpp.o"
	cd /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rp.dir/rp.cpp.o -c /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src/rp.cpp

src/CMakeFiles/rp.dir/rp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rp.dir/rp.cpp.i"
	cd /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src/rp.cpp > CMakeFiles/rp.dir/rp.cpp.i

src/CMakeFiles/rp.dir/rp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rp.dir/rp.cpp.s"
	cd /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src/rp.cpp -o CMakeFiles/rp.dir/rp.cpp.s

src/CMakeFiles/rp.dir/rp.cpp.o.requires:

.PHONY : src/CMakeFiles/rp.dir/rp.cpp.o.requires

src/CMakeFiles/rp.dir/rp.cpp.o.provides: src/CMakeFiles/rp.dir/rp.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/rp.dir/build.make src/CMakeFiles/rp.dir/rp.cpp.o.provides.build
.PHONY : src/CMakeFiles/rp.dir/rp.cpp.o.provides

src/CMakeFiles/rp.dir/rp.cpp.o.provides.build: src/CMakeFiles/rp.dir/rp.cpp.o


# Object files for target rp
rp_OBJECTS = \
"CMakeFiles/rp.dir/rp.cpp.o"

# External object files for target rp
rp_EXTERNAL_OBJECTS =

bin/rp: src/CMakeFiles/rp.dir/rp.cpp.o
bin/rp: src/CMakeFiles/rp.dir/build.make
bin/rp: src/librtags.a
bin/rp: /usr/lib/libclang.so
bin/rp: /usr/lib/libz.so
bin/rp: /usr/lib/libcrypto.so
bin/rp: src/CMakeFiles/rp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/rp"
	cd /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/rp.dir/build: bin/rp

.PHONY : src/CMakeFiles/rp.dir/build

src/CMakeFiles/rp.dir/requires: src/CMakeFiles/rp.dir/rp.cpp.o.requires

.PHONY : src/CMakeFiles/rp.dir/requires

src/CMakeFiles/rp.dir/clean:
	cd /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src && $(CMAKE_COMMAND) -P CMakeFiles/rp.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/rp.dir/clean

src/CMakeFiles/rp.dir/depend:
	cd /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15 /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15 /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src /home/cronos/.emacs.d/elpa/rtags-20171027.1028/rtags-2.15/src/CMakeFiles/rp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/rp.dir/depend

