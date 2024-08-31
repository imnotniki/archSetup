#!/bin/bash

OUT1=DP-0
OUT2=DP-2
DIM1=1920x1080
DIM2=1920x1080
RATE1=144.00
RATE2=144.00

# Apply the settings using xrandr
xrandr --output $OUT1 --mode $DIM1 --rate $RATE1 && \
xrandr --output $OUT2 --mode $DIM2 --rate $RATE2
