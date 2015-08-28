require 'imdb'
require 'sinatra'
require 'pry'
require_relative 'movies_manager.rb'

get '/' do
	erb :imdb
	# ask user to enter word
	end

post '/text' do
	@movie = MovieManager.new(params[:text]).search_name
	erb :imdb
	#get first 9 results and post posters
	#show error if there are less than 2 results
end

# post '/show_poster' do
# 	end

# get '/year' do
# 	ask user which movie (pick movie) was created in what year
# 	end




