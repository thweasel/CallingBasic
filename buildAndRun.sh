#!/bin/bash

# Go do the BASIC build with zmakebas and make a .tap file
pushd BASIC
    ./buildBasic.sh
popd

# Go do the Z88DK ZCC build and APPMAKE which will merge the .tap from above
pushd C
    ./buildC.sh
popd

# Kick off fuse for testing on 3 machines
# Comment this out if builds are failing.
./fuseTests.sh