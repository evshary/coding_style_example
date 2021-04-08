# Introduction

This is the example of how to test the coding styles in cmake.

# Build

```bash
cmake -Bbuild -H.
cmake --build build
```

# Run coding style test

```bash
cd build
ctest -V
```

# Clean

```bash
rm -rf build
```

# Reference

* [uncrustify GitHub](https://github.com/uncrustify/uncrustify)
