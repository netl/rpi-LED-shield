#! /usr/bin/python3
import spidev
from tkinter import *
import tkinter.ttk

spi = spidev.SpiDev()
spi.open(0,0)
spi.bits_per_word=8
spi.max_speed_hz=10000
animation=["noAnim","Flash"]

root = Tk()
def send():
   global animation
   spi.xfer([3<<6|int(list.curselection()[0])])

b = Button(root, text="trigger!", command=send)
b.pack()

list = Listbox(root, selectmode=SINGLE)
list.pack()

for item in ["NoAnim", "Flash", "Randomize", "Fade out"]:
    list.insert(END, item)


mainloop()
print("quitting")
spi.close()
