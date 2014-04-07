require 'sinatra'
require 'sequel'

require './config/config'
require './app/main_rest_api'
require './app/ping'

# TODO: Explain this
DB.disconnect

# Launch our Sinatra app!
run Sinatra::Application