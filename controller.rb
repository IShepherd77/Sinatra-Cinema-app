require('sinatra')
require('sinatra/reloader')

require_relative('./models/film')
also_reload('./models/*')

get '/films' do
  @films = Film.all()
  erb(:films)
end

get '/films/:id' do
  @film_details = Film.find(params[:id])[0]
  erb(:film_details)
end
