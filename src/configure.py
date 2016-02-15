#! /usr/bin/python3
import smbus

bus = smbus.SMBus(1)

#setup

current = 0.35 #led current
shuntResistor = 0.1 #value of current shunt on board
calculatedCurrent = int(current*shuntResistor*0xff/2)

#set reference to 2.0V
bus.write_i2c_block_data(0x1f,0x76,[0,0])

#set currents
print("setting outputs to ", current,"A (",calculatedCurrent,")")

#set all outputs to calculatedCurrent
bus.write_i2c_block_data(0x1f,0x80,[calculatedCurrent,0])
bus.write_i2c_block_data(0x1f,0x81,[0,0])
