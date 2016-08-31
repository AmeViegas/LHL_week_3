require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find(3).destroy
puts Store.count
pp @store3  #this was for me to note that it was still in memory. 
