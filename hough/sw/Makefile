CXX=g++
CXXFLAGS=-Wall -std=c++11 `pkg-config --cflags --libs opencv`
DEPS = fp.h
OBJ = hough.o

all: welcome clean hough
	
%.o: %.cpp $(DEPS)
	@echo Compiling $< with $(CXX)...
	$(CXX) -c -o $@ $< $(CXXFLAGS)

hough: $(OBJ)
	$(CXX) -o $@ $^ $(CXXFLAGS)

clean:
	rm -f *.o *~
	
welcome:
	@echo ---------------------------------------
	@echo -- Hough Transform fixed point model --
	@echo ---------------------------------------
	
# (useful when debugging)
# redirect compilation output to less:
# less < <(make 2>&1)
