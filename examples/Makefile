CACHE := "../cache/"

main:
	$(info ********  Luis Ross' 6502-NES learning  ********)
	$(info use make Test_XX from Test_01 up to Test_04 )

all: Test_01 Test_02 Test_03 Test_04

Test_05: mkcache wrapper 05_rand.s
	ca65 -t nes -o $(CACHE)05_rand.o 05_rand.s
	ld65 -t nes -o 05_rand.nes $(CACHE)wrapper.o $(CACHE)05_rand.o

Test_04: mkcache wrapper 04_Test.s
	ca65 -t nes -o $(CACHE)04_Test.o 04_Test.s
	ld65 -t nes -o 04_Test.nes $(CACHE)wrapper.o $(CACHE)04_Test.o

Test_03: mkcache wrapper 03_16bit.s
	ca65 -t nes -o $(CACHE)03_16bit.o 03_16bit.s
	ld65 -t nes -o 03_16bit.nes $(CACHE)wrapper.o $(CACHE)03_16bit.o

Test_02: mkcache wrapper 02_RAM.s
	ca65 -t nes -o $(CACHE)02_RAM.o 02_RAM.s
	ld65 -t nes -o 02_RAM.nes $(CACHE)wrapper.o $(CACHE)02_RAM.o

Test_01: mkcache wrapper 01_XandY.s
	ca65 -t nes -o $(CACHE)01_XandY.o 01_XandY.s
	ld65 -t nes -o 01_XandY.nes $(CACHE)wrapper.o $(CACHE)01_XandY.o

wrapper: mkcache ../wrapper.s
	ca65 -t nes -o $(CACHE)wrapper.o ../wrapper.s

mkcache:
	mkdir -p $(CACHE)

clean:
	rm $(CACHE)*.o

