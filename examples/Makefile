01_XandY: wrapper
	ca65 -t nes -o 01_XandY.o 01_XandY.s
	ld65 -t nes -o 01_XandY.nes wrapper.o 01_XandY.o
	rm wrapper.o 01_XandY.o

wrapper: ../wrapper.s
	ca65 -t nes -o wrapper.o ../wrapper.s

