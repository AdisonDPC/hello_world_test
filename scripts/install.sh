#!/bin/bash

echo "Importing SSH Key."

openssl aes-256-cbc -K $encrypted_b525089bd38a_key -iv $encrypted_b525089bd38a_iv -in deploy-travis.enc -out deploy-travis -d

chmod 600 deploy-travis

ssh-add deploy-travis