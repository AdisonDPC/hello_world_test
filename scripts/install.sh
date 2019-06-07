#!/bin/bash

echo "Importing SSH Key."

openssl aes-256-cbc -K $encrypted_b525089bd38a_key -iv $encrypted_b525089bd38a_iv -in deploy-travis.enc -out deploy-travis -d

eval "$(ssh-agent -s)"

chmod 600 deploy-travis

echo -e "Host $REMOTE_HOST\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config

ssh-add deploy-travis