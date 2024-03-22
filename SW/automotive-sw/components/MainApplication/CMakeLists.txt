set(SRC_PATH                    ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(EXECUTABLE_OUTPUT_PATH      ${CMAKE_BINARY_DIR}/out/MainApplication)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wl,-Map,${EXECUTABLE_OUTPUT_PATH}/output.map")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${EXECUTABLE_OUTPUT_PATH})

add_executable(Application ${SRC_PATH}/main.c)

target_link_libraries(Application PRIVATE 
    BrakeSystem
    EngineControl
    Navigation
)

add_custom_command(
    TARGET Application
    POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O elf32-i386 ${EXECUTABLE_OUTPUT_PATH}/Application.exe ${EXECUTABLE_OUTPUT_PATH}/Application.elf
    COMMAND ${CMAKE_OBJCOPY} -O srec ${EXECUTABLE_OUTPUT_PATH}/Application.exe ${EXECUTABLE_OUTPUT_PATH}/Application.s19
)