# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting Monuments'

Monument.destroy_all

puts 'Creating Monuments'

Monument.create!(
  name: "Tour Eiffel",
  address: "5 Avenue Anatole France, 75007 Paris"
  )

Monument.create!(
  name: "Notre Dame",
  address: "63 Rue de la Sante, 75013 Paris"
)

Monument.create!(
  name: "Arc de Triomphe",
  address: "Place Charles de Gaulle, 75008 Paris"
)

puts 'Seed Complete'
