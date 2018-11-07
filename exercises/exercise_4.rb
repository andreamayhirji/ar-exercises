require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


surrey = Store.create name: "Surrey Store", annual_revenue: 224_000, mens_apparel: false, womens_apparel: true
whistler = Store.create name: "Whistler Store", annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false
yaletown = Store.create name: "Yaletown Store", annual_revenue: 224_000, mens_apparel: true, womens_apparel: true

@mens_stores = Store.where mens_apparel: true

@mens_stores.all().each do |s|
    puts s.name
    puts s.annual_revenue
end    

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1_000_000)

@womens_stores.all().each do |s|
    puts s.name
    puts s.annual_revenue
end
