#!/bin/bash
# i3lock blurred screen inspired by /u/patopop007 and the blog post
# http://plankenau.com/blog/post-10/gaussianlock
# Timings are on an Intel i7-2630QM @ 2.00GHz
# Dependencies:
# imagemagick
# i3lock
# scrot (optional but default)
IMAGE=/tmp/i3lock.png
SCREENSHOT="scrot $IMAGE" # 0.46s
# Alternate screenshot method with imagemagick. NOTE: it is much slower
#SCREENSHOT="import -window root $IMAGE" # 1.35s
# Here are some imagemagick blur types
# Uncomment one to use, if you have multiple, the last one will be used
# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
#BLURTYPE="0x5" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x2" # 3.80s
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s
#BLURTYPE="0x8" # no time as this is my own value
BLURTYPE=0x3 # again my own value
# Get the screenshot, add the blur and lock the screen with it
$SCREENSHOT
#convert $IMAGE -blur $BLURTYPE $IMAGE
# by scaling the image down, then blurring and rescaling afterwards one
# can use much less resources for blurring (i.e. will be faster)
convert -scale 20% -blur $BLURTYPE -resize 500% $IMAGE $IMAGE
#convert -scale 10% -blur $BLURTYPE -resize 1000% $IMAGE $IMAGE
# using '-u' option in i3lock disables the unlock-indicator (circle)
i3lock -u -i $IMAGE
#i3lock -i $IMAGE
rm $IMAGE
