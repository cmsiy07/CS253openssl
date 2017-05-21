

openssl enc -aes-128-cbc -a -in lena.bmp -out CBC128lena.bmp -k test1234
dd if=lena.bmp of=CBC128lena.bmp bs=1 count=54 conv=notrunc
