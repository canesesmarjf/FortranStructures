OPTFLAGS = -O3
COMPILER = gfortran

all: modules.o main.o
		$(COMPILER) $(OPTFLAGS) -o main main.o modules.o
		rm *.o *.mod

modules.o: modules.f90
	$(COMPILER) $(OPTFLAGS) -c modules.f90

main.o: main.f90
	$(COMPILER) $(OPTFLAGS) -c main.f90

clean:
	rm main *.o *.mod
