require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "South", hourly_rate: 90)
@store1.employees.create(first_name: "Jamie", last_name: "Skip", hourly_rate: 290)


@store2.employees.create(first_name: "Jimmy", last_name: "Skip", hourly_rate: 20)
@store2.employees.create(first_name: "Jas", last_name: "Sippy", hourly_rate: 100)
@store2.employees.create(first_name: "JoJo", last_name: "Pippy", hourly_rate: 50)
