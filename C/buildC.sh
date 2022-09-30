#!/bin/bash
echo "Building the C bit and merge the BASIC"
zcc +zx main.c -o main.o -lzxbasdrv -Cz"--merge ../BASIC/BASICDRV.tap" -create-app -pragma-define:REGISTER_SP=49151 -pragma-define:CRT_ORG_CODE=32768 -zorg=32768 
