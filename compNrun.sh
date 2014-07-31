#!/bin/bash
echo 'Cleaning old binary files'
rm bin/*
echo 'Compiling Soft_Float';
gcc -o bin/soft_float.out src/soft_float.c
echo 'Creating assembly file for soft_float'
objdump -d bin/soft_float.out > src/soft_float.asm
echo 'Running Application with Input arguments babe.dat, output.dat'
bin/soft_float.out data/babe.dat data/output.dat
echo 'Compiling Soft_Int'
gcc -o bin/soft_int.out src/soft_int.c
gcc -o bin/soft_int_opt.out src/soft_int_optimized.c
echo 'Creating assembly file for soft_int'
objdump -d bin/soft_int.out > src/soft_int.asm
echo 'Running Application with Input arguments babe.dat, output_int.dat'
bin/soft_int.out data/babe.dat data/output_int.dat
bin/soft_int_opt.out data/babe.dat data/output_int_opt.dat
echo 'Compiling Application for ARM architecture'
arm-linux-gcc -o bin/soft_int_ARM.out -static src/soft_int.c
arm-linux-gcc -o bin/soft_int_ARM_optimized.out -static src/soft_int_optimized.c
arm-linux-gcc -o bin/soft_int_car_ARM.out -static src/soft_int_car.c
echo 'Creating assembly file for ARM_INT'
arm-linux-objdump -d bin/soft_int_ARM.out > src/soft_int_arm.asm
echo 'Creating assembly file for ARM_INT_OPT'
arm-linux-objdump -d bin/soft_int_ARM_optimized.out > src/soft_int_arm_opt.asm
echo 'Running ARM Application with Input arguments babe.dat, output_int.dat'
qemu-arm bin/soft_int_ARM.out data/babe.dat data/output_int_ARM.dat
qemu-arm bin/soft_int_ARM_optimized.out data/babe.dat data/output_int_ARM_optimized.dat
qemu-arm bin/soft_int_car_ARM.out data/car.dat data/output_int_ARM_car.dat
echo 'Compiling Application float for ARM architecture'
arm-linux-gcc -o bin/soft_float_ARM.out -static src/soft_float.c
echo 'Creating assembly file for ARM_FLOAT'
arm-linux-objdump -d bin/soft_float_ARM.out > src/soft_float_arm.asm
echo 'Running ARM Application with Input arguments babe.dat, output_int.dat'
qemu-arm bin/soft_float_ARM.out data/babe.dat data/output_float_ARM.dat

echo 'Finished'
