# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
sushi_name = ["Roll", "Delight", "Burrito", "Cone", "Invention"]

attributes = ["Raw", "Seaweed", "Roe", "Tempura"]

type = ["character", "location"]


50.times do |time|
    Sushi.create(name: Faker::TwinPeaks.unique.send(type.sample) + " " + attributes.sample + " " + sushi_name.sample)
end