# checking if I have the latest files from github
echo "Checking for newer files online first"

cd x86_64 && repo-add netinstall_iso_repo.db.tar.gz *pkg.tar.xz && cd ..

git pull

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

#read input

# Committing to the local repository with a message containing the time details and commit text

#git commit -m "$input"
git commit -m "new version"

# Push the local files to github

git push -u origin master


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
