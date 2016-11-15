build:
	docker build -t caidaoli/gcc .
server:
	docker run --rm -v ~/docker/gcc/app:/app -it caidaoli/gcc make

run:
	docker run --rm -v ~/docker/gcc/app:/app -it caidaoli/gcc zsh
all: build run
.PHONY: build run clean

