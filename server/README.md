Environment setup
==================

- You need to install RVM to manage your ruby enviroment.

- Install a version of Ruby:
	
	$ rvm install ruby-2.1.0

- For the Gemset to be created, you just need to change directory to the "server/". RVM will detect the .ruby-gemset file, it will create a
  new gemset named DailySoccerServer and finally it will make it the current one everytime you cd into "server/".


- Now let's install all the gems:

	$ bundle install --without production


Working locally
===============

- To run the web server:

	$ puma

  Puma will read by default a config file in config/puma.rb, and then launch our rack app
  using config.ru.

- If you want automatic reloading everytime there's a change in the code:

	$ rerun puma

- If you want to locally emulate what happens in Heroku, install and use foreman:

	$ foreman start


Deploying to Heroku
===================

- Heroku reference documentation: https://devcenter.heroku.com/categories/heroku-architecture

- After commiting everything to your master branch, use the provided script deploy.sh.
