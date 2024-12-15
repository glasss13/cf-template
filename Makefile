.PHONY: run run-input reset

build: main.cpp
	g++ -std=c++20 main.cpp -o out

run: build
	./out

run-input: build
	cat input.txt | ./out	

reset:
	@cp -f template.cpp main.cpp
	@rm out

