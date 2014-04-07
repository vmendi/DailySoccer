get '/sushi.json' do
  content_type :json
  {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
end

get '/ping' do
  erb :ping
end