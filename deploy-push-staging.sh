#!/bin/bash

FOLDER=$1

cd ~/Code/"$FOLDER"

git push origin {staging,staging_worker}

