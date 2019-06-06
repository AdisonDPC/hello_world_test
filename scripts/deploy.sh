#!/usr/bin/env sh

set -x

# tar -czf package.tgz build && \

# scp package.tgz $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH && \

# ssh -vp $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST 'bash -s' < ./scripts/untar.sh

# ssh -vp $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST 'bash -s ls'

ssh -o StrictHostKeyChecking=no -vp $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST 'bash -s ls'
