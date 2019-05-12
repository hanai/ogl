MKDIR_P = mkdir -p
OUT_DIR = output
SRC_DIR = source

.PHONY: directories

all: directories build

directories: ${OUT_DIR}

${OUT_DIR}:
	${MKDIR_P} ${OUT_DIR}

build:
	g++ ${SRC_DIR}/hello_triangle.cpp -o ${OUT_DIR}/hello_triangle -lGL -lglfw -lGLEW

clean:
	rm -rf ${OUT_DIR}