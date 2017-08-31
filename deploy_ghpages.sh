#!/bin/sh

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
npm run build

echo "Updating gh-pages branch"
cd public && git add --all

# Commit changes.
msg="Publishing to gh-pages by deploy_ghpages.sh(`date`)"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push gh-pages branch.
git push origin gh-pages

# Come Back up to the Project Root
cd ..
