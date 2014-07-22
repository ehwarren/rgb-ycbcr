#!/bin/bash
echo 'Cleaning old binary files'
rm bin/*
echo 'Compiling Soft_Float';
gcc -o bin/soft_float.out src/soft_float.c
echo 'Running Application with Input arguments babe.dat, output.dat'
bin/soft_float.out data/babe.dat data/output.dat
echo 'Compiling Soft_Int'
gcc -o bin/soft_int.out src/soft_int.c
echo 'Running Application with Input arguments babe.dat, output_int.dat'
bin/soft_int.out data/babe.dat data/output_int.dat
echo 'Compiling Application for ARM architecture'
arm-linux-gnueabi-gcc -o bin/soft_int_ARM.out -static src/soft_int.c
echo 'Creating assembly file for ARM_INT'
arm-linux-gnueabi-objdump -d bin/soft_int_ARM.out > src/soft_int_arm.asm
echo 'Running ARM Application with Input arguments babe.dat, output_int.dat'
qemu-arm bin/soft_int_ARM.out data/babe.dat data/output_int_ARM.dat
echo 'Compiling Application float for ARM architecture'
arm-linux-gnueabi-gcc -o bin/soft_float_ARM.out -static src/soft_float.c
echo 'Creating assembly file for ARM_FLOAT'
arm-linux-gnueabi-objdump -d bin/soft_float_ARM.out > src/soft_float_arm.asm
echo 'Running ARM Application with Input arguments babe.dat, output_int.dat'
qemu-arm bin/soft_float_ARM.out data/babe.dat data/output_float_ARM.dat

echo 'Finished'
