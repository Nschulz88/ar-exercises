require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# fetches only those stores that carry men's apparel: 
@mens_stores = Store.where(mens_apparel: true)
puts @mens_stores.count
@mens_stores.each do |store|  print "Mens stores with annual revenue: #{store.name}, #{store.annual_revenue}\n"
end

puts "----------"

# stores that carry women's apparel and are generating less than $1M in annual revenue:
@womens_stores_with_1M_rev = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000) 
puts @womens_stores_with_1M_rev.count
@womens_stores_with_1M_rev.each do |store|  print "Women's stores that are generating less than $1M in annual revenue: #{store.name}, #{store.annual_revenue}\n"
end