class MovieManager

  def initialize
    @movie = []
  end

  def movies(movie)
    @movie << movie
  end

  def get_movie
    @movie.limit(9)
    puts @movie.results
  end
end


