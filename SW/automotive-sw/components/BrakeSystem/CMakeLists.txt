set(SRC_PATH                        ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(HEADER_PATH                     ${CMAKE_CURRENT_SOURCE_DIR}/Inc)
set(CMAKE_C_STANDARD                99)
set(CMAKE_CXX_STANDARD              11)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Set the output directory for object files
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out/components/BrakeSystem/lib)

set(SRCS 
    ${SRC_PATH}/brake_system.c 
)

set(HEADERS 
    ${HEADER_PATH}/brake_system.h
)

add_library(BrakeSystem ${SRCS} ${HEADERS})
target_include_directories(BrakeSystem PUBLIC Inc/)

add_subdirectory(Test)