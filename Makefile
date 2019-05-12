MKDIR_P = mkdir -p
OUT_DIR = output
SRC_DIR = source

GLAD_FLAGS = -ldl

.PHONY: directories

all: directories build

directories: ${OUT_DIR}

${OUT_DIR}:
	${MKDIR_P} ${OUT_DIR}

build: hello_window hello_triangle

hello_window:
	g++ ${SRC_DIR}/glad.c ${SRC_DIR}/hello_window.cpp -o ${OUT_DIR}/hello_window -I include $(GLAD_FLAGS) -lGLEW -lglfw -lGL -lX11 -lpthread -lXrandr -lXi

hello_triangle:
	g++ ${SRC_DIR}/hello_triangle.cpp -o ${OUT_DIR}/hello_triangle -I include $(GLAD_FLAGS) -lGLEW -lglfw -lGL -lX11 -lpthread -lXrandr -lXi

clean:
	rm -rf ${OUT_DIR}