require 'CSV'

CSV.foreach('u.user.csv') do |row|
end

attr_reader :id, :age, :gender, :zip_code, :ratings

class User
  def initialize(id, age, gender, zip_code, ratings)
    @id = id
    @age = age
    @gender = gender
    @zip_code = zip_code
    @ratings = ratings
  end
end
