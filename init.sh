#!/bin/sh

npm install 

rm -rf certs
mkdir certs

openssl genrsa > ./certs/privkey.pem
openssl req -new -x509 -key ./certs/privkey.pem > ./certs/fullchain.pem

npm start