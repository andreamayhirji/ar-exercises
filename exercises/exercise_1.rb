require_relative '../setup'

class Store < ActiveRecord::Base
  end

burnaby = Store.create name: 'Burnaby store', annual_revenue: 300000, mens_apparel: true, womens_apparel: true
richmond = Store.create name: 'Richmond store', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true
gastown = Store.create name: 'Gastown store', annual_revenue: 190000, mens_apparel: true, womens_apparel: false

puts Store.count

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
