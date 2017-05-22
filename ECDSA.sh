

#generate key
openssl ecparam -name secp256k1 -genkey -noout -out secp256k1-key.pem
openssl ec -in secp256k1-key.pem -pubout -out secp256k1-pub.pem


#sign and verify
openssl dgst -sha256 -sign secp256k1-key.pem lena.tiff > signature.bin
openssl dgst -sha256 -verify secp256k1-pub.pem -signature signature.bin lena.tiff