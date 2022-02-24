#!/bin/sh

STEP=0.2
CURRENT=`xrandr --verbose | grep -i brightness | cut -f2 -d ' '`

echo $CURRENT
