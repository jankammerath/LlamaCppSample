#!/bin/bash

# cc -o llama_test main.cpp \
#    -I/Users/jan/Development/llama.cpp/include \
#    -I/Users/jan/Development/llama.cpp/ggml/include \
#    -L/Users/jan/Development/llama.cpp/build/bin \
#    -lllama -Wc++11-extensions -std=c++17 -fPIC -arch arm64

cmake -B build
cmake --build build --config Release
cp ./build/llama_test ./llama_test 