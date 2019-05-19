#!/bin/bash

cd /data/projects/nerveFlowv2

find ./* -size +100M | cat >> .gitignore

sudo git add .

sudo git commit -m $(printf "%s" $(date +"%h_%d_%y_%r"))

sudo git push origin master
