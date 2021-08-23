#!/bin/sh

echo "Cert Time"
rm -rf certs
mkdir certs

openssl genrsa > /workspaces/codespace/certs/privkey.pem
openssl req -new -x509 -subj '/CN=webaverse.com/O=Webaverse/C=US' -key /workspaces/codespace/certs/privkey.pem > /workspaces/codespace/certs/fullchain.pem

mv /webaverse/node_modules /workspaces/codespace/node_modules

echo "You are ready!"
