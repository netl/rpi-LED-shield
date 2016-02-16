#! /usr/bin/python3
import smbus

bus = smbus.SMBus(1)

#setup

current = [0.20,0.35,0.1] #led currents R,G,B
shuntResistor = 0.2 #value of current shunt on board

#set reference to 2.0V
bus.write_i2c_block_data(0x1f,0x76,[0,0])

#set currents

#set all outputs to calculatedCurrent
for led in range(len(current)):
   calculatedCurrent = int(current[led]*shuntResistor*0xff/2)
   print("setting output", led, " to ", current[led],"A (",calculatedCurrent,")")
   bus.write_i2c_block_data(0x1f,0x20+led,[calculatedCurrent,0])
