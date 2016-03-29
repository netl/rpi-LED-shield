#! /usr/bin/python3
import spidev
import sys
import random
import time
import os

spi = spidev.SpiDev()
spi.open(0,0)
spi.bits_per_word=8
spi.max_speed_hz=10000
Range=0x3f
colors=["r","g","b"]
data=[0,0,0]
lastColorUpdate=time.time()
lastFrameUpdate=time.time()
colorRate=2
frameRate=0.01

while True:
   try:
      if lastColorUpdate+colorRate < time.time():
         color=int(random.randrange(3))
         data[color] = Range
#         data[color] += int(random.randrange(Range))
#         if data[color] > Range:
#            data[color] = Range
         lastColorUpdate = time.time()
      if lastFrameUpdate+frameRate < time.time():
         os.system('clear')
         for x in range(3):
            if data[x] > 0:
               data[x] -= 1
            print(colors[x],data[x])
            spi.xfer([x<<6|data[x]])
         lastFrameUpdate = time.time()
   except KeyboardInterrupt:
      break

print("quitting")
spi.close()
