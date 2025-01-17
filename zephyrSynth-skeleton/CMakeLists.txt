# Copyright (c) 2021 Nordic Semiconductor ASA
# SPDX-License-Identifier: Apache-2.0
#
# This CMake file is picked by the Zephyr build system because it is defined
# as the module CMake entry point (see zephyr/module.yml).


# This is needed so that custom driver classes using system calls are taken into
# account
cmake_minimum_required(VERSION 3.20)
# set(ZEPHYR_BASE /Users/johnextremesourcreme/git/zephyrSynth/zephyr)
find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(zephyrSynth) 

# add_subdirectory(drivers)
# add_subdirectory(lib)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --specs=nosys.specs")
target_sources(app PRIVATE src/main.c)