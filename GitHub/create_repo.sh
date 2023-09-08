#!/bin/bash

REPO_NAME=$1

# Create a new repository
curl -X POST -H "Authorization: token $GITHUB_TOKEN" \
     -d "{\"name\":\"$REPO_NAME\", \"private\":true}" \
     https://api.github.com/user/repos

# If you want to initialize the repository, you can clone it, add a README or any other files, commit, and push.
