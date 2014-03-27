# Puma reads by convention the config file from config/puma.rb
#
# https://github.com/puma/puma
# https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#rackup
#
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'


# 2 processes (asumming we will be using a 2 core machine), 16 threads max per core
threads 8,16
workers 2
preload_app!


# The on_worker_boot block is run after a worker is spawned, but before it begins to accept requests. 
# This block is especially useful for connecting to different services as connections cannot be shared 
# between multiple processes.
on_worker_boot do
  # configuration here
end


# You should place code to close global log files, redis connections, etc in this block so
# that their file descriptors don't leak into the restarted process. 
on_restart do
end