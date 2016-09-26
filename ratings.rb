require 'CSV'
ratings = []

CSV.foreach('data.txt') do |row|  # is this only working because of the txt extension
 subarray = row[0].gsub(/\s+/, ',').split(',')
 ratings << subarray
end

class Rating
  attr_reader :user_id, :movie_id, :rating
  def initialize(user_id, movie_id, rating)
    @user_id = user_id.to_i
    @movie_id = movie_id.to_i
    @rating = rating.to_i
  end

  def find_ratings(movie_id)
    movie_rating = []
    if @movie_id == movie_id
      movie_rating << @rating
      return movie_rating
    end
  end

  # def find_average_rating (movie_id)
  #   rating.reduce #look up reduce
  # end
end

ratings.map! do |subarray|
  Rating.new(subarray[0], subarray[1], subarray[2])
end

ratings.each do |objects|
  print objects.find_ratings(200)
end
