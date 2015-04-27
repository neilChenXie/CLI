CC=g++
CFLAGS=-c -g -Wall
LDFLAGS=-lcrypto
SOURCE=main.cpp stack.cpp
OBJECTS=$(SOURCE:.cpp=.o)

EXE=stack

$(EXE):$(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@
%.o: %.cpp
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm $(OBJECTS)
	rm $(EXE)
