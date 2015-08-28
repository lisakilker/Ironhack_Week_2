require "Imdb"
require "sinatra"

set :port, 3010

class GetMovies
attr_accessor :name
	def initialize(name)
		@name = name
		@movies = IO.readlines("movies.txt")
	end

	def send_movies_DB
		@movies.each do |movie|
		end
	end

	def has_poster?
	end

	def genre
	end

	def release_date
	end
end


# new_collection = GetMovies.new
# new_collection.send_movies_DB
