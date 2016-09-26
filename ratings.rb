require 'CSV'
ratings = CSV.read('u.data')
#need to get this sorted out
rating =[]



class Rating
  attr_reader :user_id, :movie_id, :rating
  def initialize(user_id, movie_id, rating)
    @user_id = user_id.to_i
    @movie_id = movie_id.to_i
    @rating = rating.to_i
  end

  def find_ratings(movie_id)
    movie_rating =[]
    rating.each do |object|
    if movie_id == @movie_id
      movie_rating << @rating
      return movie_rating
    end
  end

  def find_average_rating (movie_id)
    rating.reduce do |#look up reduce
  end
end

 ratings.map do |subarray|
   rating << Rating.new(subarray[0], subarray[1], subarray[2])
end

rating.each do |object|
  object.find_ratings(movie_id)
end
