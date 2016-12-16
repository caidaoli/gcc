#build:
	#docker build -t caidaoli/gcc .
run:
	docker run --rm -p 8866:7866 -v ~/docker/gcc/app:/app  -v ~/Source/cpp/libzling:/libzling  -v ~/Source/cpp/drinksSrv/include:/app/include -w /app/linux -it caidaoli/gcc zsh
server:
	docker run --rm -v ~/docker/gcc/app:/app -v ~/Source/cpp/libzling:/libzling -w /app/linux -it caidaoli/gcc make
dataSync:
	docker run --rm -v ~/Source/cpp/dataSync:/app -v ~/Source/cpp/libzling:/libzling  -v ~/Source/cpp/drinksSrv/include:/app/include -w /app/linux -it caidaoli/gcc make
build:
	docker build -t caidaoli/gcc .
all: build run
.PHONY: build run clean

