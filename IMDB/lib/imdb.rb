require "Imdb"
require "sinatra"

set :port, 3013 
enable :sessions

movies = ["The Goonies", "Mermaids"]

get "/:movies" do
  	@movies = params[:movies]
  	erb :imdb
end

post '/' do
  @movies = params[:movies]
  redirect to("/")
end

get '/:movies' do
  session[:movies] = params[:movies]
end

get '/' do
  "movies = " + session[:movies]
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



