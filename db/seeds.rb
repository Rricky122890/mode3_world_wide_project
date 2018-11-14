Country.destroy_all
User.destroy_all
FavoriteCountry.destroy_all

require_relative 'seed_generator.rb'

seed_maker()


user1 = User.create(first_name: "Helen", last_name: "Arren")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
