#!/bin/bash
git checkout main
git branch release
git merge --allow-unrelated-histories --strategy=ours release
git checkout release
git merge main
git push --force origin release
