require_relative "./imdb.rb"

RSpec.describe GetMovies do

let(:thegoonies){GetMovies.new("The Goonies")}
let(:mermaids){GetMovies.new("Mermaids")}

  describe "#GetMovies initialize method" do

    it "should get a list of movies from the text file" do
    end

    it "should show only movies that have posters"  do
  	end

  	it "should give a list of all the movies in user genre request" do
  		#ask user for search term then shows 9 movies that match that search term
  		#show error if there are less than 2 results for that search term
	end

	it "should confirm if year user entered is correct" do
		#ask user to guess which year the movie was made and use javascript to show if they were right or wrong
	end
end

