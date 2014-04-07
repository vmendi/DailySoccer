require 'json'
require_relative 'model/model'

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

post '/signup' do
  User.create(:name => 'zincoontrin', :last_name => 'leches',
              :email => 'vmendi@gmail.com', :nick_name => 'zincoontrin', :password => '')

  DB[:users].all.to_json
end


post '/login' do
  @email = params[:email]
  @password = params[:password]

  # DB = Sequel.connect("postgres://user:password@host:port/database_name", :max_connections => 10, :logger => Logger.new('log/db.log'))
  users = DB[:users]

  @pasword
end

get '/user_profile' do
  logger.info "User profile requested"
  params[:session_token]
end