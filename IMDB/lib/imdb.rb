require "Imdb"
require "sinatra"

set :port, 3009

class GetMovies
attr_accessor :movies
	def initialize
		@movies = IO.readlines("movies.txt")
	end

	def send_movies_DB
		@movies.each do |movie|
		end
	end

	def has_poster
	end
end


# new_collection = GetMovies.new
# new_collection.send_movies_DB
