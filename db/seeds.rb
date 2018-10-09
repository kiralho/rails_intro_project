# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'pp'

Deal.destroy_all
SubBreed.destroy_all
Breed.destroy_all
Store.destroy_all


json = File.read('datajson.json')
parsed_json = JSON.parse(json)

parsed_json["message"].each do |breed, subbreed|
  breed = Breed.new(name: breed)
  breed.save()
  subbreed.each do |breed_sub|
    breed.sub_breeds.create(name: breed_sub)
  end
end

15.times do
  store = Store.new(name: Faker::BossaNova.unique.artist, address: Faker::Address.unique.street_address)
  store.save()
end

