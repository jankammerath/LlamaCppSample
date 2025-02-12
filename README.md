# Llama.cpp Sample

This is a sample boilerplate application that shows how to include and link llama.cpp in any C++ application. It is based on the simple example from llama.cpp and was used as part of my Medium article [The Resurgence of C++ through Llama.cpp, CUDA & Metal](https://medium.com/@jankammerath/the-resurgence-of-c-through-llama-cpp-cuda-metal-8d2322cd8ded).

## Building llama.cpp

There is llama.cpp in homebrew, but I did not test that yet. Best is to check out llama.cpp and build it yourself.

```bash
cmake -B build -DBUILD_SHARED_LIBS=ON
cmake --build build --config Release
```

Shared libs needs to be on as otherwise, you have no shared libs to link!