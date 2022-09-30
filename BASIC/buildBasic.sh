#!/bin/bash
inputBASIC="basicdrv.bas"

echo -e "Building $inputBASIC\n"

echo -e "zmakebas -a 5 -o BASICDRV.tap -n $inputBASIC $inputBASIC"
zmakebas -a 5 -o BASICDRV.tap -n $inputBASIC $inputBASIC

echo -e "Building DONE...\n"

echo -e "BASIC listing output to TAP:\n\n========"

listbasic BASICDRV.tap

echo -e "========\n"
 
