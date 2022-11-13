EXEC=a.out

CXX=g++

SRC=main.cpp disp.cpp prog.cpp util.cpp
OBJ=$(SRC:%.cpp=%.o)

GL=-lGLEW -lGL
SDL=-lSDL2
LDFLAGS+=$(SDL)
LDFLAGS+=$(GL)

.PHONY: all
all: $(EXEC)

%.o: %.cpp %.h
	$(CXX) -c $< -o $@ $(LDFLAGS)

main.o: main.cpp
	$(CXX) -c $< -o $@ $(LDFLAGS)

$(EXEC): $(OBJ)
	$(CXX) $^ $(LDFLAGS) -o $@

.PHONY: clean
clean:
	rm *.o $(EXEC)
