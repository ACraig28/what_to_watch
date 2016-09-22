require 'CSV'
CSV.foreach("movie.csv") do |row|
end

attr_reader :id, :title, :release_date, :genre


class Movie
  def initialize(id, title, release_date, genre)
    @id = id
    @title = title
    @release_date = release_date,
    @genre = genre
  end
end
# genre will be a hash
