class Movies
  @@movie_count = 0
  attr_accessor :movie

  def initialize(movie)
    @@movie_count += 1
    @movie = movie
  end

  def print
    "Movie ##{@movie}: #{@movie}"
  end
end
