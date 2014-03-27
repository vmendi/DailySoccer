#!/bin/bash

# Configure Heroku environment
# heroku config:add NODE_ENV=production_sandbox --app betcards

# Upload only the server/ folder
git subtree push --prefix server/ heroku master