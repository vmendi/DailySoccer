require 'sinatra'
require 'json'

set :public_folder, File.dirname(__FILE__) + '/../public'


get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

# class API < Sinatra::Base
  get '/sushi.json' do
    content_type :json
    
    {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
  end
# end