require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

#validation check
#The bang versions (e.g. save!) raise an exception if the record is invalid. 
#The non-bang versions don't: save and update return false, and create returns the object.
puts @store1.employees.create(first_name: "Khurram").valid?
puts @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60).valid?

puts "Input a store name: "
@user_store = gets.chomp
puts "--------------------"

puts invalid_store = Store.create(name: "Burnaby")
puts invalid_store.valid?
puts invalid_store.errors.full_messages