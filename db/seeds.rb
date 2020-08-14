# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "rest-client"
require "faker"
villagers = RestClient.get 'https://raw.githubusercontent.com/ronniekram/acnh-json/master/acnh.json'

villagers_hash = JSON.parse(villagers)


villagers_hash.each do |k, v|
    Villager.create(
      name: v["name"]["name-USen"],
      image: v["image_uri"],
      gender: v["gender"],
      personality: v["personality"],
      species: v["species"],
      birthday: v["birthday-string"]
    )
end 

15.times do 
  Island.create(
    name: Faker::Dessert.unique.variety,
    owner: Faker::Name.unique.name,
    villager_ids: [Faker::Number.within(range: 1..391), Faker::Number.within(range: 1..391), Faker::Number.within(range: 1..391)]
  )
end 



