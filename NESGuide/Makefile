cache = "cache/"

original:
	ca65 cart.s -o $(cache)cart.o -t nes
	ld65 $(cache)cart.o -o cart.nes -t nes

all: original own

own:
	ca65 mine.s -o $(cache)mine.o -t nes
	ld65 $(cache)mine.o -o mine.nes -t nes

