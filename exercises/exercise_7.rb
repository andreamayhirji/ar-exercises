require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

p @store2.employees.create(first_name: "Sizzle", last_name: "Snap", hourly_rate: 60)
error_store = Store.create name: 'Cat Shop', annual_revenue: 200_000, mens_apparel: true, womens_apparel: true

puts "Provide a store name:"
store_name = $stdin.gets.chomp

user_store = Store.create name: store_name

p user_store.valid?
puts @users_store.errors.messages
