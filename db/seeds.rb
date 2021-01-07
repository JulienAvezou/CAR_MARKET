# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "1@1.com", first_name: "Dan", last_name: "User1", password: "123123")
User.create(email: "2@2.com", first_name: "Joe", last_name: "User2", password: "123123")
User.create(email: "3@3.com", first_name: "Jill", last_name: "User3", password: "123123")
User.create(email: "4@4.com", first_name: "Marie", last_name: "User4", password: "123123")

Car.create(name: "Car1", price: 200, specs: "cool car", user_id: 1)
Car.create(name: "Car2", price: 200, specs: "unique", user_id: 2)
Car.create(name: "Car3", price: 150, specs: "stylish", user_id: 3)
Car.create(name: "Car4", price: 200, specs: "wow", user_id: 4)
Car.create(name: "Car5", price: 120, specs: "nice", user_id: 5)

