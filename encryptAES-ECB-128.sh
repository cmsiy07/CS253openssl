#!/bin/sh
 

openssl enc -aes-128-ecb -a -in lena.bmp -out ECB128lena.bmp -k test1234
dd if=lena.bmp of=ECB128lena.bmp bs=1 count=54 conv=notrunc