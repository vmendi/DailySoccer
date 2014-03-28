require 'sinatra'
require 'json'

set :public_folder, File.dirname(__FILE__) + '/../public'


get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

post '/login' do
  @email = params[:post][:email]

  "THIS_IS_THE_ACCESS_TOKEN"
end

get '/user_info?session_token=:session_token' do
  params[:session_token]
end