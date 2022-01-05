require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

#employees
#"id" serial primary key, "store_id" integer, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL 

#creates employees
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Vera", last_name: "Fatikhov", hourly_rate: 55)
@store1.employees.create(first_name: "James", last_name: "Bain", hourly_rate: 78)

@store2.employees.create(first_name: "Vasily", last_name: "Klimkin", hourly_rate: 96)
@store2.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 80)

puts "----------"
puts Employee.count
