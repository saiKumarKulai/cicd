set -x
git_token=${1}

git config --global user.email "ksai96py@gmai.com"
git config --global user.name "saiKumarKulai"
git clone "https://${git_token}@github.com/SaiLuckyAss/learnGitHubActions" -b main
cd learnGitHubActions
git checkout -b new_bran1
echo "Heleleo" > xyz.txt
git add --all
git commit -m "Comma"
git push -u origin new_bran1
curl -X POST -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $git_token" https://api.github.com/repos/SaiLuckyAss/learnGitHubActions/pulls -d '{"title":"CICD: Add git act","body":"Adding","head":"new_bran1","base":"main"}'  

cd ../
