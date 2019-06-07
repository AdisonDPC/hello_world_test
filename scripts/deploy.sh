#!/bin/bash

# scp <PATH_FILE> ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}

COMMAND="cd ${REMOTE_PATH} && touch tutu.txt"

ssh -o StrictHostKeyChecking=no -i deploy-travis -vp ${REMOTE_PORT} ${REMOTE_USER}@${REMOTE_HOST} ${COMMAND}
