CXX= g++
CXXFLAGS=  -Wall -Wextra -Werror -Wpedantic
STD= -std=c++14
SOURCES= *.cpp
OBJECTS= $(SOURCES: .cpp=.o)

all= modern

%.o: %.cpp %.hpp
	$(CXX) %.cpp $(STD) -o $@ $(CXXFLAGS) -g

modern: $(OBJECTS)
	$(CXX)  $(OBJECTS) -o $@


#%.o: %.cpp %.hpp
#	$(CXX) %.cpp $(STD) -o $@ $(CXXFLAGS) -g

#main.o: main.cpp *.hpp
#	$(CXX) main.cpp $(STD) -o $@ $(CXXFLAGS) -g

#modern: $(OBJECTS)
#	$(CXX) $(OBJECTS) -o $@


clean:
	rm modern
