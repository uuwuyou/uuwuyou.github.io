hugo --theme=hyde --baseUrl="https://uuwuyou.github.io/" --buildDrafts
mv public/.gitbak .git
cd public
git add -A
git commit -am "post a new article"
git push origin master
mv .git .gitbak
cd ..
