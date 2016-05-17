all: clean hex program

reset:
	avrdude -c linuxspi -P /dev/spidev0.0 -p atmega48 -F

program: main.hex
	avrdude -c linuxspi -P /dev/spidev0.0 -p atmega48 -F -U main.hex

hex: main.o
	avr-objcopy -O ihex main.o main.hex

main.o:
	avr-gcc -g -mmcu=atmega48 -o main.o main.c animations.c pwm.c debug.c

clean:
	rm *.hex *.o
