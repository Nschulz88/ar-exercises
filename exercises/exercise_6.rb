require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jessica", last_name: "Hofchen", hourly_rate: 50)
@store1.employees.create(first_name: "Natalie", last_name: "Schulz", hourly_rate: 45)
@store1.employees.create(first_name: "Sarah", last_name: "Schulz", hourly_rate: 45)
@store2.employees.create(first_name: "Spencer", last_name: "Zaharko", hourly_rate: 55)
@store2.employees.create(first_name: "Max", last_name: "Muster", hourly_rate: 20)
@store2.employees.create(first_name: "Bob", last_name: "Steele", hourly_rate: 65)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 35)

