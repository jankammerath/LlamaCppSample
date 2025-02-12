#!/bin/zsh
# Define the path prefix
PATH_PREFIX="/Users/jan/Development/llama.cpp"

# Compile the app (this is for macOS!)
cc -o llama_test main.cpp \
    -std=c++17 -lc++ -Wc++11-extensions \
    -Wl,-rpath,${PATH_PREFIX}/build/bin \
    -I${PATH_PREFIX}/include \
    -I${PATH_PREFIX}/ggml/include \
    -L${PATH_PREFIX}/build/bin \
    -lllama \
    -lggml -lggml-base -lggml-blas -lggml-cpu -lggml-metal \
    -fPIC -arch arm64