modern: *.cpp *.hpp
	g++ *.cpp std=c++14 -o modern -Wall -Wextra -Werror -Wpedantic -g

modernRelaese: *.cpp *.hpp
	g++ *.cpp std=c++14 -o $@ -Wall -Wextra -Werror -Wpedantic -O3

modern: *.cpp *.hpp
clean:
	rm modern
