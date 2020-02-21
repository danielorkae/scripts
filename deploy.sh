#!/bin/bash

cd "$1"

git checkout master

git branch -D production
git branch -D produciton_worker

git checkout production
git merge master

git checkout production_worker
git merge master
