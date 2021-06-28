PROBLEM = PROBLEM_NAME
CXX = g++
CFLAGS = -Wall -Wextra -Wfloat-equal -fsanitize=address -Wconversion -Wlogical-op -D_FORTIFY_SOURCE=2 -Wshift-overflow=2 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -pedantic -std=c++17 -g

all : $(PROBLEM)
	./$(PROBLEM)
$(PROBLEM) : $(PROBLEM).cpp
	$(CXX) $(CFLAGS) -o $(PROBLEM) $(PROBLEM).cpp
clean: 
	rm $(PROBLEM)
