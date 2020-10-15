#!/bin/bash

# adds, commit and push your changes
git add config.yml
git commit -m 'chore: update config.yml'
git push -u origin main

# make gh-pages branch to be the same as main
git checkout gh-pages
git reset --hard origin/main

# generate files
urlzap generate

# add, commit and push generated files
git add --all
git commit -m 'chore: update HTML files'
git push -u origin gh-pages --force

