require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel:true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel:false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel:true)

@mens_stores = Store.where(mens_apparel:true).where(womens_apparel:false)
@mens_stores.each do |store|
  puts "Men's only store: #{store.name} has annual revenue of #{store.annual_revenue}"
end

Store.where(mens_apparel:false).where(womens_apparel:true).where('annual_revenue < 10000000').find_each do |store|
   puts "Women's only store: #{store.name} has annual revenue of #{store.annual_revenue}"
end
