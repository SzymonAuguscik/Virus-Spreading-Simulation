cmake_minimum_required(VERSION 3.16)
project(Virus_Spreading_Simulation)

set(CMAKE_CXX_STANDARD 20)
SET(CMAKE_CXX_FLAGS -pthread)
set (CMAKE_EXE_LINKER_FLAGS -lstdc++fs )

link_libraries(stdc++fs)

add_executable(Virus_Spreading_Simulation main.cpp Region.h Region.cpp Simulation.h Simulation.cpp)