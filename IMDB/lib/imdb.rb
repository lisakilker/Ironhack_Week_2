require "imdb"
require "sinatra"
require_relative "movies_manager.rb"

movie_manager = MovieManager.new

# movies = ["The Goonies", "Mermaids"]

get "/" do
  @movie = movie_manager.get_movie
  erb :imdb
end

get "/movie/new" do
  erb :imdb
end

get "/has_poster" do
end

get "/genre" do
end

get "/year" do
end

post "/movie" do
  	redirect to("/")
end



