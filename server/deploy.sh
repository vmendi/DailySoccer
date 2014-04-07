#!/bin/bash

# Configure Heroku environment
# heroku config:add NODE_ENV=production_sandbox --app betcards

# Upload only the server/ folder
# git push heroku `git subtree split --prefix server/ master`:master --force
# git subtree push --prefix server/ heroku master

git push heroku master:master