#! /bin/bash
../avr/set.py $(nc -l 1234 | awk '{print $1, int(7-$1), 3}')
