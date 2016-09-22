require 'CSV'
CSV.foreach("data.csv") do |row|
end

attr_reader :user_id, :movie_id

class Rating
  def initialize(user_id, movie_id)
    @user_id = user_id
    @movie_id = movie_id
  end
end
