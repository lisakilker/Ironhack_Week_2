require "imdb"
require "sinatra"
require_relative "lib/movie.rb"
require_relative "lib/movie_manager.rb"

movie_manager = MovieManager.new

# movies = ["The Goonies", "Mermaids"]

get "/" do
  @movie = movie_manager.get_movies
  erb :imdb
end

post "/remove_task/:task_id" do
  task_id = params[:task_id].to_i
  movie_manager.remove_movie(movie_id)
  redirect to("/")
end

get "/movie/new" do
  erb :imdb
end

post "/movie" do
  content = params[:movie]
  movie = movie.new(content)
  movie_manager.add_movie(movie)

  redirect to("/")
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



