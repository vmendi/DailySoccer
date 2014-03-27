Environment setup
==================

- You need to install RVM to manage your ruby enviroment.

- Install a version of Ruby:
	
	$ rvm install 2.1.0

- For the Gemset to be created, you need to change directory to the "server/":

	$ DailySoccer git:(master) ✗ cd server

	ruby-2.1.0 - #gemset created /Users/vmendi/.rvm/gems/ruby-2.1.0@DailySoccerServer
	ruby-2.1.0 - #generating DailySoccerServer wrappers - please wait

- Now let's install all the gems:

	$ bundle install --without production


Working locally
===============

- To run the web server:

	$ puma

Puma will read by default a config file in config/puma.rb, and then launch our rack app
using config.ru.

- If you want to locally emulate what happens in Heroku, install and use foreman:

	$ foreman start


Deploying to Heroku
===================

- Heroku reference documentation:

	https://devcenter.heroku.com/categories/heroku-architecture

- After commiting everything to your master branch, use the provided script serverdeploy.sh. 
  This script deploys only the "server/" folder using a git subtree push. It's a nasty hack :)
