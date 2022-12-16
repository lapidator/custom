#!/bin/sh
# Shell script to prepend i3status with more stuff.
#
# Note that this will not work for a specific setting in the i3status config,
# e.g., to be found at ~/.config/i3status/config.
# The following setting cannot be used:
#general {
#	output_format = i3bar
#}
# Without this setting i3status tries to auto-detect output_format and might
# fall back to "none".
#
# To use this script, make it executable and replace in your i3 config:
#bar {
#	status_command i3status
#}
# with the following line instead,  where the path is adjusted to this file:
#bar {
#	status_command /path/to/this/file/custom_i3status.sh
#}
#
# Mind that the used script below is in the same directory as this file or that
# the path is adjusted.

i3status | while :
do
	read line
	KEYLAY="$(./grep_keyboard_layout.sh)"
	#echo "some new stuff | $line" || exit 1
	echo "board: ${KEYLAY} | ${line}" || exit 1
	#echo "${KEYLAY} | ${line}" || exit 1
done
