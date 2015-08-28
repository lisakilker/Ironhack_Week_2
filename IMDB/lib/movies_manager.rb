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

  def remove_movie(id)
    @movie.delete_if do |movie|
      movie.id == id
    end
  end
end
