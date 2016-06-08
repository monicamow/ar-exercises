require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
p surrey

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
p whistler

yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
p yaletown

p Store.count

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "#{store.name}, Revenue: #{store.annual_revenue}"
end

@low_womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1_000_000)

@low_womens_stores.each do |store|
  puts "#{store.name}, Revenue: #{store.annual_revenue}"
end