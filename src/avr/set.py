#! /usr/bin/python3
import spidev
import sys

if len(sys.argv) != 4:
   print("need 3 values, ex: 255 255 255")
   sys.exit(0)

bytes=[( int(sys.argv[1]) | int(sys.argv[2])<<3 | int(sys.argv[3])<<6)]

spi = spidev.SpiDev()
spi.open(0,0)
spi.bits_per_word=8
spi.max_speed_hz=100
spi.xfer(bytes)
#for x in range(1,4):
#   spi.xfer([int(sys.argv[x])])
spi.close()
