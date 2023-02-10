#!/usr/bin/env bash

ip address show eth0 | grep "inet" | head -n 1 | awk '{print $2}' | cut -f1 -d"/"
