require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# return the store with id
@store3 = Store.find_by(id: 3)
puts @store3.name

#delete it from database
@store3.destroy
puts Store.count
