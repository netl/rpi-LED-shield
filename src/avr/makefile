all: clean compile program
	avrdude -c linuxspi -P /dev/spidev0.0 -p t88 -F

program: main.hex
	avrdude -c linuxspi -P /dev/spidev0.0 -p t88 -F

hex: main.o
	avr-objcopy -O ihex main.o main.hex

main.o:
	avr-gcc -g -mmcu=attiny48 -o main.o main.c

clean:
	rm *.hex *.o
