
require 'CSV'
users = CSV.read('u.user')
user = []

class User
  attr_reader :id, :age, :gender, :zip_code
  def initialize(id, age, gender, zip_code)
    @id = id.to_i
    @age = age.to_i
    @gender = gender
    @zip_code = zip_code.to_i
  end

  def get_id_by_age
    if @age < 20
      puts "user #{@id} is #{@age}"
    end
  end
end

users.map do |subarray|
  user << User.new(subarray[0], subarray[1], subarray[2], subarray[4])
end

#use =[] ?
#user.map do |subarray| ?
#@id => {@age, @gender, @zipcode,}?
#end



user.each do |object|
  object.get_id_by_age
end
