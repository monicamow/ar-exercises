require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@employee1 = @store1.employees.create(first_name: "Bob", last_name: "Ross", hourly_rate: 10)

p @employee1 

@employee2 = @store2.employees.create(first_name: "Monica", last_name: "Mow", hourly_rate: 10)

p @employee2

@store6 = Store.find(6)
@employee6 = @store6.employees.create(first_name: "Anderson", last_name: "Cooper", hourly_rate: 10)

p @employee6
