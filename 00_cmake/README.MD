## 创建一个简单的 CMakeLists
```CMakeLists
#设置CMake 编译的最低版本
cmake_minimum_required(VERSION 3.11)

#设置项目名称
project(hello1)

#设置执行目标，生成的可执行文件为 hello.exe 或者 hello.out
add_executable(hello main.cpp)
```
