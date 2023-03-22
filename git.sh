#!/bin/bash
cd zeus-blog
hexo clean
hexo g
cd ..

git add .
date +%F > timefile
currentTime=$(<timefile)
git commit -m "Commit code. Update time: $currentTime "
git push
