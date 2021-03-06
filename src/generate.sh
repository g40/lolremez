#!/bin/sh
echo "// machine generated by lolremez and generate.sh\n" > pow_43_coefficients.h
echo "Range ranges[] = {\n" >> pow_43_coefficients.h
./lolremez -s --float -d 5 -r 2:8 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 5 -r 8:16 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 4 -r 16:32 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 4 -r 32:64 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 4 -r 64:128 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 4 -r 128:192 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 4 -r 192:256 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 4 -r 256:512 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 3 -r 512:1024 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 3 -r 1024:2048 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 3 -r 2048:3072 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 3 -r 3072:4096 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 3 -r 4096:6144 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 3 -r 6144:7168 "pow(x,4/3)" >> pow_43_coefficients.h
./lolremez -s --float -d 3 -r 7168:8207 "pow(x,4/3)" >> pow_43_coefficients.h
echo "};\n\n\n" >> pow_43_coefficients.h

