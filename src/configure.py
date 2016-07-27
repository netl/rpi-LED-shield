#! /usr/bin/python3
import smbus
import sys

if len(sys.argv) != 5:
   print("need 4 values, ex: 0.3 0.3 0.3 0.1")
   sys.exit(0)


bus = smbus.SMBus(1)

#setup
current=[float(sys.argv[x]) for x in range(1,5)]
shuntResistor = 0.2 #value of current shunt on board
estimatedVoltage = 12 #voltage on supply

#set reference to 2.0V
bus.write_i2c_block_data(0x1f,0x76,[0,0])

#set all outputs to desired current
totalPower = 0
for output in range(len(current)):
   #calculatedCurrent = int(current[output]*shuntResistor*0xff/2)
   calculatedCurrent = int(current[output]*0xff/1.56)
   totalPower += current[output]
   print("setting output", output, " to ", current[output],"A (",calculatedCurrent,")")
   bus.write_i2c_block_data(0x1f,0x20+output,[calculatedCurrent,0])

totalPower *= estimatedVoltage
print("total power consumed: %.2fW" % totalPower)
