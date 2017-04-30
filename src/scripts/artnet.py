#!/usr/bin/python
import socket
import sys 
import spidev

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.bind(('0.0.0.0',6454))                                                                                                                                                                                  

led = spidev.SpiDev()
led.open(0,0)
led.bits_per_word=8
led.max_speed_hz=1000

colorRange=63./255.
sys.stderr.write(str(colorRange) + '\n')

while True:
   try:
      data, addr = s.recvfrom(1024)

      #display received values
      sys.stderr.write("%s,%s,%s\n" % (ord(data[18]),ord(data[19]),ord(data[20])))
      
      #shift colors in
      led.xfer([0<<6|int(float(ord(data[18]))*colorRange)])
      led.xfer([1<<6|int(float(ord(data[19]))*colorRange)])
      led.xfer([2<<6|int(float(ord(data[20]))*colorRange)])
   except IndexError:
      pass

