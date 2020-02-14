# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
array_culture_type = ["wheat", "barley", "corn"]

Assurance.destroy_all

5.times do |i|
  Assurance.create(
    email: Faker::Internet.email,
    social_reason: Faker::Name.last_name ,
    siret: Faker::Number.number(digits: 14),
    siren: Faker::Number.number(digits: 9),
    naf_code: Faker::Number.number(digits: 5),
    annual_incomes: Faker::Number.number(digits: 6),
    phone_number: Faker::Number.number(digits: 10),
    type:"Agricultural",
    culture_type: array_culture_type.shuffle.first,
    dry_zone: Faker::Boolean.boolean,
  )
  puts "one more Agricultural Assurance created #{i + 1}"
end
5.times do |i|
  Assurance.create(
    email: Faker::Internet.email,
    social_reason: Faker::Name.last_name ,
    siret: Faker::Number.number(digits: 14),
    siren: Faker::Number.number(digits: 9),
    naf_code: Faker::Number.number(digits: 5),
    annual_incomes: Faker::Number.number(digits: 6),
    phone_number: Faker::Number.number(digits: 10),
    type:"Car",
    registration_number: Faker::Number.number(digits: 7),
    licence_points: Faker::Number.within(range: 1..12),
    car_model: Faker::Name.name
  )
  puts "one more Car Assurance created #{i + 1}"
end
5.times do |i|
  Assurance.create(
    email: Faker::Internet.email,
    social_reason: Faker::Name.last_name ,
    siret: Faker::Number.number(digits: 14),
    siren: Faker::Number.number(digits: 9),
    naf_code: Faker::Number.number(digits: 5),
    annual_incomes: Faker::Number.number(digits: 6),
    phone_number: Faker::Number.number(digits: 10),
    type:"Immovable",
    building_size: Faker::Number.number(digits: 4),
    floor_number: Faker::Number.number(digits: 2),
  )
  puts "one more Immovable Assurance created #{i + 1}"
end
