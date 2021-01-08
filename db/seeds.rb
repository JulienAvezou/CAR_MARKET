# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "1@1.com", first_name: "Dan", last_name: "Martin", password: "123123")
User.create(email: "2@2.com", first_name: "Joe", last_name: "White", password: "123123")
User.create(email: "3@3.com", first_name: "Jill", last_name: "Jackson", password: "123123")
User.create(email: "4@4.com", first_name: "Marie", last_name: "Beauregard", password: "123123")

Car.create(name: "Tesla S", price: 200, specs: "cool car", user_id: 1)
Car.create(name: "911 Type G 3.2L", price: 200, specs: "unique", user_id: 2)
Car.create(name: "2CV AZS", price: 150, specs: "stylish", user_id: 3)
Car.create(name: "Wrangler", price: 200, specs: "wow", user_id: 4)
Car.create(name: "F-Type Sport", price: 120, specs: "nice", user_id: 5)
Car.create(name: "328 GTS", price: 110, specs: "stylish", user_id: 3)
Car.create(name: "TR3 A", price: 230, specs: "wow", user_id: 4)
Car.create(name: "Type E Série 2 Coupe", price: 125, specs: "nice", user_id: 5)

CarFile.create(name: "Tesla S", pros: "sturdy", cons: "slow")
CarFile.create(name: "911 Type G 3.2L", pros: "fast", cons: "expensive")
CarFile.create(name: "2CV AZS", pros: "reliable", cons: "slow")
CarFile.create(name: "Wrangler", pros: "stylish", cons: "polluting")
CarFile.create(name: "F-Type Sport", pros: "rare", cons: "high maintenance")
CarFile.create(name: "911 Carrera S Cabriolet - 997", pros: "sturdy", cons: "slow")
CarFile.create(name: "Type E Série 2 Coupe", pros: "fast", cons: "expensive")
CarFile.create(name: "Pagode SL 230 (R113)", pros: "reliable", cons: "slow")
CarFile.create(name: "328 GTS", pros: "stylish", cons: "polluting")
CarFile.create(name: "TR3 A", pros: "rare", cons: "high maintenance")
CarFile.create(name: "Mondial", pros: "rare", cons: "high maintenance")

