#! /bin/bash
ifstat -i eth0 -n -q -b 1 1 | awk /[0-9][.]/ | awk '{print int(255*$1/100000)}' | nc 127.0.0.1 1234
