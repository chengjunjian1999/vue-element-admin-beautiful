#!/usr/bin/env bash
set -e
npm run build:stage
cd dist
touch .nojekyll
git init
git add -A
git commit -m 'deploy'
#git push -f "https://${access_token}@github.com/chuzhixin/byui.git" master:gh-pages
git push -f "https://${access_token}@gitee.com/chu1204505056/byui.git" master:gh-pages
rimraf dist
cd -
