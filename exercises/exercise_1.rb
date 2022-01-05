require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
#stores
#"id" serial primary key, "name" character varying, "annual_revenue" integer, "mens_apparel" boolean, "womens_apparel" boolean, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL
#employees
#"id" serial primary key, "store_id" integer, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL 

Burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count