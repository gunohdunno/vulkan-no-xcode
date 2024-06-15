cmake_minimum_required(VERSION 3.8)
project(VulkanPOC)

set (CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Change path from /src if needed, or add more directories
file(GLOB_RECURSE sources
        "${CMAKE_SOURCE_DIR}/src/*.c"
        "${CMAKE_SOURCE_DIR}/src/*.cpp"
        )

add_executable(VulkanPOC ${sources})

# Add more include directories if needed
target_include_directories(VulkanPOC
    PUBLIC
        "${HOME}/VulkanSDK/1.3.283.0/macOS/include"
        "/opt/homebrew/Cellar/glfw/3.4/include"
        "/opt/homebrew/Cellar/glm/1.0.1/include"
)
