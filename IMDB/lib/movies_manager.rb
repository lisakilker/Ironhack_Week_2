class MovieManager

  def initialize
    @movie = []
  end

  def add_task(movie)
    @movie << movie
  end

  def get_movie
    puts @movie
    @movie
  end
end
