require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# create stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "----------"
puts Store.count

# find all stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# loop through each of these stores and output their name and annual revenue
puts "mens stores:"
for store in @mens_stores do
  puts "name: #{store.name}", "annual_revenue: #{store.annual_revenue}"
end

# find all stores that carry women's apparel and are generating less than $1M in annual revenue
@womens_stores = Store.where('womens_apparel = true AND annual_revenue < 1000000')


# loop through each of these stores and output their name and annual revenue
puts "womens stores:"
for store in @womens_stores do
  puts "name: #{store.name}", "annual_revenue: #{store.annual_revenue}"
end