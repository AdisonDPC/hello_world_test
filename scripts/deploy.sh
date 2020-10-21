#!/bin/bash

<<<<<<< HEAD
echo "Using Parcel (Deploy Script in GitHub Pages)."
=======
echo "Using Parcel (Deploy Script in Digital Ocean)."

# scp <PATH_FILE> ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}

COMMAND="cd ${REMOTE_PATH} && git checkout build_gh && git pull && git checkout master && git pull && cp build_do/* /var/www/html/HTML/HTML_ADPCProjects_V1/"

ssh -o StrictHostKeyChecking=no -i deploy-travis -vp ${REMOTE_PORT} ${REMOTE_USER}@${REMOTE_HOST} ${COMMAND}
>>>>>>> b5c55e7860509a670a36bf11804263f559636232
