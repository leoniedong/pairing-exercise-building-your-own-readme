# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lannister.destroy_all
Debt.destroy_all

Lannister.create(first_name: "Cersei", age: 31)
Lannister.create(first_name: "Jaime", age:31)
Lannister.create(first_name: "Tywin", age: 67)
Lannister.create(first_name: "Tyrion", age: 25)

Debt.create(name: "Iron Bank", amount: 6000000, lannister: Lannister.first) #reference: https://screenrant.com/game-thrones-cersei-offer-iron-bank-deal/
Debt.create(name: "Bronn", amount: 1000000000000000, lannister: Lannister.fourth) #Highgarden