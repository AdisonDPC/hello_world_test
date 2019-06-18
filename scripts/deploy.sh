#!/bin/bash

echo "Using Parcel (Deploy Script in Digital Ocean)."

# scp <PATH_FILE> ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}

COMMAND="cd ${REMOTE_PATH} && git pull && cp build_do/* /var/www/html/HTML/HTML_ADPCProjects_V1/"

ssh -o StrictHostKeyChecking=no -i deploy-travis -vp ${REMOTE_PORT} ${REMOTE_USER}@${REMOTE_HOST} ${COMMAND}