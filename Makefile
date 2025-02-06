# 获取当前目录的根目录
basepath :=$(shell pwd)
# 指定头文件的 include 目录
CXXFLAGS+=-I$(basepath)/dependency/SDL2/include
# 指定库目录地址
LDFLAGS+=-L$(basepath)/dependency/SDL2/lib

#指定为 c++17 标准
CXXFLAGS+=-std=c++17 
LDLIBS += -lSDL2  #链接SDL库
LDLIBS += -lSDL2_image  #链接SDL_image库
#指定输出目录
OUTPUT:=output
#指定源文件目录为 src
SRCDIR:=src
# 默认目标为传入的参数  make targetDir=02_windowEvent
.DEFAULT_GOAL := $(targetDir)


all: $(OUTPUT) $(MAIN)
	@echo Executing 'all' complete!

$(OUTPUT):
	$(shell mkdir $(OUTPUT))
	

.PHONY: run clean $(OUTPUT)
$(targetDir):
	$(CXX) $(SRCDIR)/$(targetDir)/main.cpp -o $(OUTPUT)/$(basename $@) $(CXXFLAGS) $(LDFLAGS) $(LDLIBS)
	@$(OUTPUT)/$(targetDir)
clean:
	$(RM) $(OUTPUT)/*.exe $(OUTPUT)/*.o
