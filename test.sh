#!/bin/bash

echo "start shell"
# sleep 10
echo 
echo "done"
commit_id=$(git log -n 1 --pretty=oneline | awk '{print $1}')
echo "Last commit id is: $commit_id"
files=$(git diff-tree --no-commit-id --name-only -r ${commit_id} |  grep 'variable.json')
for file in $files
do
    echo "pushing ${file} to artifactory"
done

