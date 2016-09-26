#require 'CSV'
#CSV.foreach("data.csv") do |row|
#end

attr_reader :user_id, :movie_id

class Rating
  def initialize(user_id, movie_id, rating)
    @user_id = user_id
    @movie_id = movie_id
    @rating = rating
  end
end

def find_ratings(movie_id)
end

def find_average_rating (movie_id)
end
