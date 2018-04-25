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

puts "Pick a store name (name is the city the store is located in): "
user_pick = gets.chomp

# Store.create(name: user_pick, annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
user1_store = Store.create(name: user_pick)

puts "You picked #{user_pick}"

if user1_store.valid?
    puts "Your requested store was created."
else 
    puts "Your requested store was not created due to this error: #{user1_store.errors.messages}."
end


