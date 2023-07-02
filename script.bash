set -x
git_token=${1}

git config --global user.email "ksai96py@gmai.com"
git config --global user.name "saiKumarKulai"
git clone "https://${git_token}github.com/SaiLuckyAss/learnGitHubActions"
cd learnGitHubActions
git checkout -b branch_from_yml
echo "Heleleo" > xyz.txt
git add --all
git commit -m "Comma"
git push -u origin branch_from_yml
curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${git_token}" \
  https://api.github.com/repos/SaiLuckyAss/learnGitHubActions/pulls \
  -d '{"title":"CI","body":"Body","head":"'"branch_from_yml"'","base":"'"main"'"}'

cd ../
