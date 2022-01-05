require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# return the store with id
@store1 = Store.find_by(id: 1)
puts @store1.name

@store2 = Store.find_by(id: 2)
puts @store2.name

# update store
@store1.update(name: "Burnaby_store")
puts @store1.name