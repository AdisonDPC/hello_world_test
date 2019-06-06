#!/bin/bash

set -x

openssl aes-256-cbc -K $encrypted_b525089bd38a_key -iv $encrypted_b525089bd38a_iv -in deploy-travis.enc -out deploy-travis -d && \

rm deploy-travis.enc && \
chmod 600 deploy-travis && \
mv deploy-travis ~/.ssh/id_rsa
 