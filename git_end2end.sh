#! /bin/bash



echo "which repo"
read repo
cd
cd /home/coderr/$repo

git status

git branch

read -p "select any 1 or create new with -b falg: " name
echo "$(git checkout $name) "

git branch

git pull

git status

read -p "git add all to click '.' or 'file name': " name
echo "$(git add $name)"
git status

read -p "write messege for commit :" text
echo "$(git commit -m "$text")"

git status

git branch -v -a

read -p "type here remote_name & branch_name :" text1 text2
Secho "$(git push $text1 $text2)"


echo " GO TO GITHUB A/C CHECK IT ONCE"


