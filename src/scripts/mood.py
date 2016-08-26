#! /usr/bin/python3
import spidev
import sys
import random
import time
import os
from math import *
import colorsys

spi = spidev.SpiDev()
spi.open(0,0)
spi.bits_per_word=8
spi.max_speed_hz=1000
Range=0x3f
colors=["r","g","b"]
data=[0,0,0]
lastFrameUpdate=time.time()
frameRate=0.01
starttime = time.time()

while True:
   try:
      now = (time.time()-starttime)/100
      if time.time() > lastFrameUpdate + frameRate:
         i = 0
         for color in colorsys.hsv_to_rgb(sin(now)*sin(now/10)*sin(now/3)/2+0.5, 1, 1):
            spi.xfer([i<<6 | int(color*Range)])
            i += 1
         lastFrameUpdate = time.time()
   except KeyboardInterrupt:
      break

print("quitting")
spi.close()
