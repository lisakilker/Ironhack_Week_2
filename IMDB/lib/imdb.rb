require "Imdb"
require "sinatra"
require_relative "movies_manager.rb"

movie_manager = MovieManager.new

enable :sessions

get '/' do
  	@movie = movie_manager.get_movie
end

get '/word' do
	movie = Imdb::Search.new(movie)
	erb :imdb
	# ask user to enter word
end

get '/session' do
	erb :password
end

post '/show_poster' do
	#get first 9 results and post posters
	#show error if there are less than 2 results
end

get '/year' do
	#ask user which movie (pick movie) was created in what year
end

post '/movie' do
  	redirect to("/")
end




