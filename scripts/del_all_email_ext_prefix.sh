#!/bin/bash
# Removes all 'ext' email prefixes from every commit from all branches and tags
git filter-branch --env-filter '
	if [[ "$GIT_COMMITTER_EMAIL" == ext.* ]]
	then
	    export GIT_COMMITTER_EMAIL="${GIT_COMMITTER_EMAIL#ext.}"
	fi
	if [[ "$GIT_AUTHOR_EMAIL" == ext.* ]]
	then
	    export GIT_AUTHOR_EMAIL="${GIT_AUTHOR_EMAIL#ext.}"
	fi
	' --tag-name-filter cat -- --branches --tags
