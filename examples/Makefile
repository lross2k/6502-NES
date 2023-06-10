04_Test: wrapper
	ca65 -t nes -o 04_Test.o 04_Test.s
	ld65 -t nes -o 04_Test.nes wrapper.o 04_Test.o
	rm wrapper.o 04_Test.o

03_16bit: wrapper
	ca65 -t nes -o 03_16bit.o 03_16bit.s
	ld65 -t nes -o 03_16bit.nes wrapper.o 03_16bit.o
	rm wrapper.o 03_16bit.o

02_RAM: wrapper
	ca65 -t nes -o 02_RAM.o 02_RAM.s
	ld65 -t nes -o 02_RAM.nes wrapper.o 02_RAM.o
	rm wrapper.o 02_RAM.o

01_XandY: wrapper
	ca65 -t nes -o 01_XandY.o 01_XandY.s
	ld65 -t nes -o 01_XandY.nes wrapper.o 01_XandY.o
	rm wrapper.o 01_XandY.o

wrapper: ../wrapper.s
	ca65 -t nes -o wrapper.o ../wrapper.s

