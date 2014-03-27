require './app/main_rest_api.rb'

#
# https://devcenter.heroku.com/articles/getting-started-with-ruby#specify-ruby-version-and-declare-dependencies-with-a-gemfile
#
# By default, Ruby buffers its output to stdout. To take advantage of Heroku’s realtime logging, 
# you will need to disable this buffering to have log messages sent straight to Logplex. To disable 
# this buffering add this to your config.ru:
$stdout.sync = true

run Sinatra::Application