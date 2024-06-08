APP_NAME = vulkanPOC
BUILD_DIR = ./bin

APP_DEFINES:=
APP_LINKERS:= -L$(HOME)/VulkanSDK/1.3.283.0/macOS/lib -Wl,-rpath,$(HOME)/VulkanSDK/1.3.283.0/macOS/lib -lvulkan.1 -L/opt/homebrew/Cellar/glfw/3.4/lib -lglfw.3.4 -L/opt/homebrew/Cellar/glm/1.0.1/lib -lglm
APP_INCLUDES:= -I$(HOME)/VulkanSDK/1.3.283.0/macOS/include -I/opt/homebrew/Cellar/glfw/3.4/include -I/opt/homebrew/Cellar/glm/1.0.1/include
APP_CPP_FILES = main.cpp

all: buildClient run

buildClient:
	clang++ -std=c++20 $(APP_CPP_FILES) -o $(BUILD_DIR)/$(APP_NAME) $(APP_LINKERS) $(APP_INCLUDES)
debug:
	clang++ -v -std=c++20 $(APP_CPP_FILES) -o $(BUILD_DIR)/$(APP_NAME) $(APP_LINKERS) $(APP_INCLUDES)
run:
	$(BUILD_DIR)/$(APP_NAME)
