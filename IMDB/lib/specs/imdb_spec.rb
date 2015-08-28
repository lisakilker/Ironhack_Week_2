require_relative "./imdb.rb"

RSpec.describe GetMovies do

let(:atlanta) {POI.new("Atlanta", 10)}

  describe "#POI initialize method" do

    it "should create an object with city name and number of visits" do
      expect(atlanta.visits).to eq(10)
    end
  end
end

#ask user for search term then shows 9 movies that match that search term
#only show movies that have posters (create method)
#ask user to guess which year the movie was made and use javascript to show if they were right or wrong
#show error if there are less than 2 results for that search term