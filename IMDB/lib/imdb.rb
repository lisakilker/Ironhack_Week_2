require "Imdb"
require "sinatra"
require_relative "movies_manager.rb"

movie_manager = MovieManager.new

get "/word" do
	movie = Imdb::Search.new(movie)
	erb :imdb
	# ask user to enter word
end

get "/" do
  @movie = movie_manager.get_movie
end

post "/show_poster" do
	#get first 9 results and post posters
end

get "/year" do
	#show popup if year is correct
end

post "/movie" do
  	redirect to("/")
end



