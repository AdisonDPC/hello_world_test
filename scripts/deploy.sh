#!/bin/bash

# scp <PATH_FILE> ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}

ssh -o StrictHostKeyChecking=no -i deploy-travis -vp ${REMOTE_PORT} ${REMOTE_USER}@${REMOTE_HOST} "cd ${REMOTE_PATH} && pwd"
