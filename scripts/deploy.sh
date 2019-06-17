#!/bin/bash

echo "Using Parcel (Deploy Script in GitHub Pages)."

git subtree push --prefix build_gh gh-pages
