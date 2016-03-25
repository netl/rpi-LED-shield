#! /bin/bash
~/git/rpi-LED-shield/src/avr/set.py $(nc -l 1234 | awk '{print $1, int(255-$1), 64}')
