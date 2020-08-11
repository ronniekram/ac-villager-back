# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "rest-client"

villagers = RestClient.get 'https://raw.githubusercontent.com/ronniekram/acnh-json/master/acnh.json'

villagers_hash = JSON.parse(villagers)

# villagers_hash.each do |v|
#   Villager.create(
#     name: v["name"]["name-USen"],
#     image: v["image-uri"],
#     gender: v["gender"],
#     personality: v["personality"],
#     species: v["species"],
#     birthday: v["birthday-string"]
#   )
# end 

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



