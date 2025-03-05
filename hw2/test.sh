set -x
gcc -w c4.c -o c4
./c4 -s power2.c
./c4 -d power2.c