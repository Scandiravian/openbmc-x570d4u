#!/bin/bash

echo 255 > /sys/class/hwmon/*/pwm1
echo 255 > /sys/class/hwmon/*/pwm2
echo 255 > /sys/class/hwmon/*/pwm3
echo 255 > /sys/class/hwmon/*/pwm4
echo 255 > /sys/class/hwmon/*/pwm5
echo 255 > /sys/class/hwmon/*/pwm6

