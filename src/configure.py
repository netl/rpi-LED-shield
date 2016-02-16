#! /usr/bin/python3
import smbus

bus = smbus.SMBus(1)

#setup
current = [0.2,0.35,0.1,0.1] #led currents R,G,B,fan
shuntResistor = 0.43 #value of current shunt on board
estimatedVoltage = 30 #voltage on supply

#set reference to 2.0V
bus.write_i2c_block_data(0x1f,0x76,[0,0])

#set all outputs to desired current
totalPower = 0
for output in range(len(current)):
   calculatedCurrent = int(current[output]*shuntResistor*0xff/2)
   totalPower += current[output]
   print("setting output", output, " to ", current[output],"A (",calculatedCurrent,")")
   bus.write_i2c_block_data(0x1f,0x20+output,[calculatedCurrent,0])

totalPower *= estimatedVoltage
print("total power consumed: %.2fW" % totalPower)
