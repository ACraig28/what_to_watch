require 'CSV'
movies = CSV.read("movie.csv")
#get this worked out

class Movie
  attr_reader :id, :title, :release_date, :genre
  def initialize(id, title, release_date, genre)
    @id = id
    @title = title
    @release_date = release_date
    @genre = genre
  end
end

  def find_movie(movies, movie_id)
    if movie_id == @id
      return @title
    end
  end
end


if movies.each do |object|
  puts object.find_movie
end
