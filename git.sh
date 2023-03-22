#!/bin/bash
cd zeus-blog
hexo clean
hexo g
cd ..

cp -rf zeus-blog/public/* ./test/

git add .

date +%F > timefile
currentTime=$(<timefile)
git commit -m "Commit code. Update time: $currentTime "
git push

echo "https://nicolastinkl.github.io/"
