# Compiler
CXX = g++
CXXFLAGS = -Wall -std=c++17

# Target executable
TARGET = cube

# Source files
SRCS = main.cpp Cube.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Build target
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Compile .cpp to .o
%.o: %.cpp Cube.h
	$(CXX) $(CXXFLAGS) -c $<

# Clean build files
clean:
	rm -f $(OBJS) $(TARGET)

# Run program
run: $(TARGET)
	./$(TARGET)
