CXX = mpic++
#for compilation on Cray 
# 1. make clean
# 2. use CC compiler. uncomment the following line and comment out CXX = mpic++
#CXX = CC
FLAGS = -O3 -Wall

all: m+.o mp.o aStar.o 
	${CXX} ${FLAGS} -o m+ m+.o mp.o aStar.o -fopenmp

m+.o: m+.cpp m+.hpp
	${CXX} ${FLAGS} -c m+.cpp

mp.o: mp.cpp m+.hpp
	${CXX} ${FLAGS} -c mp.cpp

aStar.o: aStar.cpp m+.hpp
	${CXX} ${FLAGS} -c aStar.cpp -fopenmp

clean:
	rm -rf *.o
	




#original make
#all: m+.o aStar.o 
#	g++ -o m+ m+.o aStar.o -fopenmp
#
#m+.o: m+.cpp m+.hpp
#	g++ -c m+.cpp -fopenmp
#
#aStar.o: aStar.cpp m+.hpp
#	g++ -c aStar.cpp -fopenmp
#
#clean:
#	rm *.o
