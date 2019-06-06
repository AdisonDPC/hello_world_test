#!/bin/bash

set -x

openssl aes-256-cbc -K $encrypted_b525089bd38a_key -iv $encrypted_b525089bd38a_iv -in ./deploy-travis.enc -out ~/.ssh/deploy-travis -d && \

rm ./deploy-travis.enc && \
chmod 600 ~/.ssh/deploy-travis && \
mv ~/.ssh/deploy-travis ~/.ssh/id_rsa
