require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.all.sum(:annual_revenue)
p @total_revenue

@average_revenue = Store.average(:annual_revenue).round
p @average_revenue

@big_sales = Store.where("annual_revenue > ?", 1_000_000).count
p @big_sales

