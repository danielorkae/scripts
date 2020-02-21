#!/bin/bash

FOLDER="$1"
BRANCH_TO_MERGE=$2
PROJECTS_FOLDER="$HOME/Code/"

if [ -z $FOLDER ];
then
	echo "You must provide the project folder!"
	exit
fi

if [ -z $BRANCH_TO_MERGE ];
then
	BRANCH_TO_MERGE="master"
fi

cd "$PROJECTS_FOLDER$FOLDER"

git checkout $BRANCH_TO_MERGE

git branch -D staging
git branch -D staging_worker

git checkout staging
git merge $BRANCH_TO_MERGE

git checkout staging_worker
git merge $BRANCH_TO_MERGE

