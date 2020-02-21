#!/bin/bash

FOLDER="$1"
BRANCH_TO_MERGE="master"
PROJECTS_FOLDER="$HOME/Code/"

if [ -z $FOLDER ];
then
	echo "You must provide the project folder!"
	exit
fi

if [ -z $BRANCH_TO_MERGE ];
then
	$BRANCH_TO_MERGE="master"
fi

cd $PROJECT_FOLDER$FOLDER

git checkout $BRANCH_TO_MERGE

git branch -D production
git branch -D production_worker

git checkout production
git merge $BRANCH_TO_MERGE

git checkout production_worker
git merge $BRANCH_TO_MERGE

