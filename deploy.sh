#!/bin/bash

set -x

if [ $TRAVIS_BRANCH == 'master' ] ; then

    # Initialize a new git repo in _site, and push it to our server.

    cd _site

    git init
        
    git remote add origin "adpcuser@165.227.131.21:/home/adpcuser/Uploads/Travis_CI"
    git config user.name "Adison Daniel Pérez Caraballo"
    git config user.email "adisondpc@gmail.com"
    
    git add .
    git commit -m "Deploy"
    git push --force origin master

else

    echo "Not deploying, since this branch isn't master."

fi