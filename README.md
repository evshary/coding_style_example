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

# Run uncrustify directly

```bash
# check only
uncrustify -c linux_c.cfg -l c test.c test.h --check
# generate modified files
uncrustify -c linux_c.cfg -l c test.c test.h 
```

# Clean

```bash
rm -rf build
```

# Reference

* [uncrustify GitHub](https://github.com/uncrustify/uncrustify)
* [代码格式化工具 uncrustify 配置文件选项详解](https://blog.csdn.net/whatday/article/details/91049852)
