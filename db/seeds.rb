# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(first_name: "David", last_name: "Knott", email: "david1k1nott@gmail.com", username: "David", password: "4122", password_confirmation: "4122", role: 1)
question = Question.create(content: "What's the meaning of life?")
question.author = user