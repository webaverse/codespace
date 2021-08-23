FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-14
COPY --chown=node ./node_modules /webaverse/node_modules

RUN cd /webaverse/node_modules/dialog; npm install
RUN cd /webaverse/node_modules/webaverse-app; npm install
