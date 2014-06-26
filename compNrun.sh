#!/bin/bash
echo 'Compiling Soft_Float';
gcc -o bin/soft_float.out src/soft_float.c
echo 'Running Application with Input arguments babe.dat, output.dat'
bin/soft_float.out data/babe.dat data/output.dat
echo 'Compiling Soft_Int';
gcc -o bin/soft_int.out src/soft_int.c
echo 'Running Application with Input arguments babe.dat, output_int.dat'
bin/soft_int.out data/babe.dat data/output_int.dat
echo 'Finished'
