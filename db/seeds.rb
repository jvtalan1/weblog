# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(category: 'Modern')
Category.create(category: 'Contemporary')
Category.create(category: 'Minimalist')
Category.create(category: 'Industrial')
Category.create(category: 'Mid-Century Modern')
Category.create(category: 'Scandinavian')
Category.create(category: 'Traditional')
Category.create(category: 'Transitional')
Category.create(category: 'French Country')
Category.create(category: 'Bohemian')
Category.create(category: 'Rustic')
Category.create(category: 'Shabby Chic')
Category.create(category: 'Hollywood Glam')
Category.create(category: 'Coastal/Hamptons')

Author.create(name: 'Walter White')
Author.create(name: 'Saul Goodman')
Author.create(name: 'Gus Fring')
Author.create(name: 'Jessie Pinkman')Admin.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')