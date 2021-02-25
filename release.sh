#!/bin/bash

BRANCH=$(git branch --show-current)
VERSION=$(head -n1 debian/changelog  | grep -oP '\d+.\d+.\d+')
git tag | grep "$VERSION" || (echo 'Version already released' && exit 1)

git tag "$VERSION"
git push origin --tags
#git push origin $BRANCH