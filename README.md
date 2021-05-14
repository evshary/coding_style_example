# Introduction

This is the example of how to test the coding styles in cmake.

We use coding style tool [uncrustify](https://github.com/uncrustify/uncrustify) here.

# Build

```bash
cmake -Bbuild -H.
cmake --build build
```

# Run uncrustify directly

```bash
# check only
uncrustify -c linux_c.cfg -l c test.c test.h --check
# generate modified files
uncrustify -c linux_c.cfg -l c test.c test.h 
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

# Ignore coding style

```c
/* *INDENT-OFF* */
// your ignore code here
/* *INDENT-ON* */
```

# Reference

* [代码格式化工具 uncrustify 配置文件选项详解](https://blog.csdn.net/whatday/article/details/91049852)
