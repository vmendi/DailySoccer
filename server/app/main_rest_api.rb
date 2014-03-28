require 'sinatra'
require 'json'


get '/' do
  "Hello World!"
end

# class API < Sinatra::Base
  get '/sushi.json' do
    content_type :json
    
    {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
  end
# end