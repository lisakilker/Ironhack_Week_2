class MovieManager

  def initialize
    @movie = []
  end

  def movies(movie)
    @movie << movie
  end

  def show_poster
    @movie.limit(9)
    puts @movie
  end
end


