#!/bin/bash
echo 'Compiling Soft_Float';
gcc -o bin/soft_float.out src/soft_float.c
echo 'Running Application with Input arguments babe.dat, output.dat'
bin/soft_float.out data/babe.dat data/output.dat
echo 'Finished'
