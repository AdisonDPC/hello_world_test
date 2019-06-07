#!/bin/bash

# tar -czf package.tgz build && \

# scp package.tgz $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH && \

# ssh -vp $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST 'bash -s' < ./scripts/untar.sh

# ssh -vp $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST 'bash -s ls'

ssh -i -vp $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST 'pwd'
