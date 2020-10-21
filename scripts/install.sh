#!/bin/bash

<<<<<<< HEAD
echo "Using Parcel (Install Script in GitHub Pages)."
=======
echo "Using Parcel (Install Script in Digital Ocean)."

echo "Importing SSH Key."

echo "REMOTE_PORT = ${REMOTE_PORT}"
echo "REMOTE_USER = ${REMOTE_USER}"
echo "REMOTE_HOST = ${REMOTE_HOST}"

# cat ~/.ssh/deploy-travis.pub | ssh -vp ${REMOTE_PORT} ${REMOTE_USER}@${REMOTE_HOST} "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"

openssl aes-256-cbc -K $encrypted_b525089bd38a_key -iv $encrypted_b525089bd38a_iv -in deploy-travis.enc -out deploy-travis -d

eval "$(ssh-agent -s)"

chmod 600 deploy-travis

ssh-add deploy-travis
>>>>>>> b5c55e7860509a670a36bf11804263f559636232
