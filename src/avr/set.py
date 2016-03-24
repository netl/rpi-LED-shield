#! /usr/bin/python3
import spidev
import sys

if len(sys.argv) != 4:
   print("need 3 values, ex: 255 255 255")
   sys.exit(0)

spi = spidev.SpiDev()
spi.open(0,0)
spi.bits_per_word=8
spi.max_speed_hz=100
for x in range(1,4):
   spi.xfer([int(sys.argv[x])])
spi.close()
