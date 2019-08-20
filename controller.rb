require('sinatra')
require('sinatra/reloader')

require_relative('./models/film')
also_reload('./models/*')

get '/films' do
  films = Film.all()
  @film_titles = []
  for film in films
    @film_titles << film.title()
  end
  erb(:films)
end
