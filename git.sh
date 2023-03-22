#!/bin/bash
cd zeus-blog
hexo clean
hexo g
cd ..
cp -r zeus-blog/public ./
git add .
date +%F > timefile
currentTime=$(<timefile)
git commit -m "Commit code. Update time: $currentTime "
git push

echo "https://nicolastinkl.github.io/"
