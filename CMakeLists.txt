cmake_minimum_required(VERSION 3.10)

project(test_project)

aux_source_directory(. SOURCES)

add_executable(test_exe ${SOURCES})
