# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Place.create!([
  {
    name: 'Random Place in Gdansk',
    description: "Just a random place in Gdańsk",
    lat: 54.380292,
    lng: 18.611262
  },
  {
    name: '2nd Random Place in Gdansk',
    description: "Just another random place in Gdańsk",
    lat: 52.380292,
    lng: 20.611262
  }
])
