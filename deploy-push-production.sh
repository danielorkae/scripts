#!/bin/bash

FOLDER=$1

cd ~/Code/"$FOLDER"

git push origin {production,production_worker}

