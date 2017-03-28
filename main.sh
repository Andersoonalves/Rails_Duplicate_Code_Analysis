git clean -f -d
git reset --hard $1
git merge scripts -m "Merge"
find . -name *.erb | bash ./find.sh
bash run.sh

