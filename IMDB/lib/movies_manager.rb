require 'imdb'

class MovieManager

  def initialize(text)
    @text = text
    @movielist = []
  end

  def search_name
    @movie = Imdb::Search.new(@text).movies[1]
  end

  # def poster
  # end

  # def release_date
  # end

end


