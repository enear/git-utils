#!/bin/bash
# Creates a local branch for all remote branches
for remote in `git branch -r | grep -v /HEAD`
do
	git checkout --track $remote
done
