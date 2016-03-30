#! /usr/bin/python3
import spidev
import sys

if len(sys.argv) != 3:
   print("need 2 values, ex: <register> <value>")
   sys.exit(1)

#if(int(sys.argv[2])>0x3f):
if(int(sys.argv[2])>100):
   print("value too large")
   sys.exit(2)

reg={'r':0, 'g':1, 'b':2, 'm':3}
if sys.argv[1] == 'm':
   data = [reg[sys.argv[1]]<<6|int(sys.argv[2])]
else:
   data = [reg[sys.argv[1]]<<6|int(int(sys.argv[2])*0x3f/100)]

spi = spidev.SpiDev()
spi.open(0,0)
spi.bits_per_word=8
spi.max_speed_hz=10000
spi.xfer(data)
spi.close()
