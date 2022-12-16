#!/bin/sh
COMMAND=$(xset -q | grep LED | awk '{ print $10 }')

case "${COMMAND}" in
	"00000002"|"00000003") LAYOUT="en" ;;
	"00001002"|"00001003") LAYOUT="de" ;;
	*) LAYOUT="unknown layout" ;;
esac

echo "${LAYOUT}"
