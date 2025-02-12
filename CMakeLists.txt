set(TARGET llama_test)
set(LLAMA_LIB_DIR /Users/jan/Development/llama.cpp/build/bin)
set(GGML_LIB_DIR ${LLAMA_DIR}/build/ggml)

# Add executable
add_executable(${TARGET} main.cpp)

# Include directories
include_directories(
    /Users/jan/Development/llama.cpp/include
    /Users/jan/Development/llama.cpp/ggml/include
    /Users/jan/Development/llama.cpp/common
)

# Find the library
find_library(LLAMA_LIB
    NAMES llama
    PATHS ${LLAMA_LIB_DIR}
    NO_DEFAULT_PATH
    REQUIRED
)

find_package(Llama REQUIRED)

find_library(GGML_LIB
    NAMES ggml
    PATHS ${LLAMA_LIB_DIR} ${GGML_LIB_DIR}
    NO_DEFAULT_PATH
    REQUIRED
)

# Link against the library
target_link_libraries(${TARGET} PRIVATE
    ${LLAMA_LIB}
    ${GGML_LIB}
    ${CMAKE_THREAD_LIBS_INIT}
    ggml::all
)

# Set C++ standard
target_compile_features(${TARGET} PRIVATE cxx_std_17)

# Add rpath for the dynamic libraries
set_target_properties(${TARGET} PROPERTIES
    BUILD_WITH_INSTALL_RPATH TRUE
    INSTALL_RPATH "${LLAMA_LIB_DIR};${GGML_LIB_DIR}"
)

# Install target
install(TARGETS ${TARGET} RUNTIME)