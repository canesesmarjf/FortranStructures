OPTFLAGS = -O3
COMPILER = gfortran

all: modules.o function_1.o main.o
		$(COMPILER) $(OPTFLAGS) -o main main.o modules.o function_1.o
		rm *.o *.mod

modules.o: modules.f90
	$(COMPILER) $(OPTFLAGS) -c modules.f90

function_1.o: function_1.f90
		$(COMPILER) $(OPTFLAGS) -c function_1.f90

main.o: main.f90
	$(COMPILER) $(OPTFLAGS) -c main.f90

clean:
	rm main *.o *.mod
