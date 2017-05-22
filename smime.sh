
#create private key
openssl req -newkey rsa:2048 -keyout privkey.pem -out req.pem

#create certificate
openssl x509 -req -in req.pem -signkey privkey.pem -out cert.pem
echo "encrypting file"
#encrypt
openssl smime -encrypt -aes256 -in lena.tiff -binary -outform DER -out enc.tiff cert.pem

echo "file encrypted"
echo "decrypting file"
#decrypt
openssl smime -decrypt -in enc.tiff -inform DER -inkey privkey.pem -out lena2.tiff
echo "done decrypting check lena2.tiff"