CC = g++
CFLAGS = -Wall -std=c++17 -c
NAME = Lab2

FILES = main.cpp calculator.cpp
OBJECTS = main.o calculator.o
HEADERS = calculator.h

all: $(NAME)

$(NAME): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJECTS)

main.o: main.cpp $(HEADERS)
	$(CC) $(CFLAGS) $< -o $@

calculator.o: calculator.cpp $(HEADERS)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJECTS) $(NAME)

.PHONY: clean
