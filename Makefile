EXEC=a.out

CXX=g++

SRC=main.cpp disp.cpp prog.cpp util.cpp
OBJ=$(SRC:%.cpp=%.o)

LDFLAGS=-lGLEW -lGL -lSDL2

.PHONY: all
all: $(EXEC)

%.o: %.cpp %.h
	$(CXX) -c $< -o $@ $(LDFLAGS)

main.o: main.cpp
	$(CXX) -c $< -o $@ $(LDFLAGS)

$(EXEC): $(OBJ)
	$(CXX) $^ -o $@ $(LDFLAGS) 

.PHONY: clean
clean:
	rm *.o $(EXEC)
