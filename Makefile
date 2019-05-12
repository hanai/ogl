MKDIR_P = mkdir -p
OUT_DIR = output
SRC_DIR = source

GLAD_FLAGS = -ldl

LINKER_OPTS = $(GLAD_FLAGS) -lGLEW -lglfw -lGL -lX11 -lpthread -lXrandr -lXi

.PHONY: directories

all: directories build

directories: ${OUT_DIR}

${OUT_DIR}:
	${MKDIR_P} ${OUT_DIR}

build: hello_window hello_triangle

hello_window:
	g++ ${SRC_DIR}/glad.c ${SRC_DIR}/hello_window.cpp -o ${OUT_DIR}/hello_window -I include $(LINKER_OPTS)

hello_triangle:
	g++ ${SRC_DIR}/hello_triangle.cpp -o ${OUT_DIR}/hello_triangle -I include $(LINKER_OPTS)

clean:
	rm -rf ${OUT_DIR}