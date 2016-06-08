require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "What is the store name?"

user_input = gets.chomp.strip

@new_store = Store.create(name: user_input)

@error_messages = @new_store.errors.messages

@error_messages.each do |message|
  p message
end

# check if store is created when all fields put in

# @new_store = Store.create(name: user_input, annual_revenue: 100_000, mens_apparel: true, womens_apparel: true)

# @error_messages = @new_store.errors.messages

# @error_messages.each do |message|
#   p message
# end
