#!/bin/sh
npm install 

echo "Cert Time"
rm -rf certs
mkdir certs

openssl genrsa > ./certs/privkey.pem
openssl req -new -x509 -subj '/CN=webaverse.com/O=Webaverse/C=US' -key ./certs/privkey.pem > ./certs/fullchain.pem

cp -rf ./certs ./node_modules/dialog/certs
echo "You are ready!"
