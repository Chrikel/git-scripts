# git-scripts
Some git scripts to work faster.

### WORK IN PROGRESS

## Install
```
git clone git@github.com:Chrikel/git-scripts.git
cd git-scripts
./setup.sh
```

## Usage
```
> git cacp [feature-branch-name] [basebranch (default: develop)]

> git cacp add-test develop

> git cacp add-test
```

`git cacp` is stashing the current work progress and pulls the base branch.
Creates an Branch `(feature/[feature-branch-name])` and applies all stashed changes.
After all, the feature branch gets pushed to origin.
