#!/bin/bash
cmake -B build
cmake --build build --config Release
cp ./build/llama_test ./llama_test 