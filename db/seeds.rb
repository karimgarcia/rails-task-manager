# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Task.destroy_all

puts 'Creating restaurants...'
Task.create!(name: "First note", description: "This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).")
Task.create!(name: "Second note", description: "For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html")

puts 'Finished!'
