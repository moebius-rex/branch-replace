# Replace contents of a release branch with the main branch

The purpose of this project this to show how to script the `git` commands needed to replace the contents of a `release` branch with the contents of a `main` or `master` branch. This can be used to trigger the deployment of
a release to production or UAT.

## Git commands
Assuming that the name of your main branch is `main`, execute the following commands to replace the contents of a `release` branch with the contents of a `main` branch:

```bash
git checkout main
git branch release
git merge --allow-unrelated-histories --strategy=ours release
git checkout release
git merge main
git push --force origin release
```

The `push` command requires a GitHub username with push access to the repository and a personal access token (if you don't have one or can't
remember what it is, go to [your GitHub tokens](https://github.com/settings/tokens) to create a new one). These commands can be found in the executable bash script `release.sh` in the top level of this project repo.

To replace `release` with `main` and trigger a new CI/CD pipeline, enter the following at the command line:
```bash
% ./release.sh
```
