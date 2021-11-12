# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

30.times do
  Movie.create(
    title: Faker::Movie.title,
    year: [1945, 1967, 1989, 1999, 1991, 1992, 1997, 1998, 1983, 2003, 2009].sample,
    director: Faker::Name.name,
    synopsis: "Here is some placeholder text. We're not exactly sure what this movie is about because this is all fake data. However, once this application is up and running you will be able to see the real synopsis of real movies!",
    genre: Faker::Book.genre,
  )
end


5.times do
  List.create(
    name: Faker::Movie.title
  )
end
