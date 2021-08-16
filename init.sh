#!/bin/sh

echo "Cert Time"
rm -rf certs
mkdir certs

openssl genrsa > ./certs/privkey.pem
openssl req -new -x509 -key ./certs/privkey.pem > ./certs/fullchain.pem

echo "You are ready!"
