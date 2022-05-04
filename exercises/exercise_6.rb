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
@store1.employees.create(first_name: "Kurram", last_name: "Vrani", hourly_rate: 60)
@store1.employees.create(first_name: "Khrram", last_name: "Viani", hourly_rate: 60)
@store2.employees.create(first_name: "Kuram", last_name: "Vni", hourly_rate: 60)
@store2.employees.create(first_name: "Krram", last_name: "Virai", hourly_rate: 60)
@store2.employees.create(first_name: "Khrram", last_name: "Virni", hourly_rate: 60)


Employee.validates :first_name, presence: true
Employee.validates :last_name, presence: true
Employee.validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
Employee.validates :store_id, presence: true

Store.validates :name, length: { minimum: 3 }
Store.validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}

puts "Enter a store name"
@name = gets.chomp

newStore = Store.creates!(name: @name)