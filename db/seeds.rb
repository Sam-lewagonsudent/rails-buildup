# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Creating categories

puts 'Seed Started'

UserChallenge.destroy_all
puts 'USERCHALLENGE Data Destroyed'
UserCategory.destroy_all
puts 'USERCATEGORY Data Destroyed'
Action.destroy_all
puts 'ACTION Data Destroyed'
Category.destroy_all
puts 'CATEGORY Data Destroyed'
User.destroy_all
puts 'USER Data Destroyed'

puts 'Category started'
transport = Category.create!(title: "Transport")
alimentation = Category.create!(title: "Alimentation")
logement = Category.create!(title: "Logement")
service_societaux = Category.create!(title: "Service Societaux")
divers = Category.create!(title: "Divers")
puts 'Category finished'

puts 'ACTION started'
piss = Action.create!(name: "Pisser sous la douche", span: 3.weeks, value: 10, category: divers)
bike = Action.create!(name: "Faire du vélo", span: 1.day, value: 20, category: transport)
vegetable = Action.create!(name: "Manger des légumes", span: 2.weeks, value: 30, category: alimentation)
puts 'vegetables 7 weeks'
season = Action.create!(name: "Manger des truc de saisons", span: 2.months, value: 40, category: alimentation)
khaled = Action.create!(name: "Another one", span: 13.months, value: 50, category: logement)
puts 'khaled 13 months'
starfield = Action.create!(name: "Acheter le jeu le  Septembre", span: 2.years, value: 60, category: service_societaux)
puts 'starfield 2 years'
banana = Action.create!(name: "Peanut Butter Jeally Time", span: 9.days, value: 70, category: divers)
puts 'banana 9 days'
puts 'ACTION finished'

puts 'User started'
jean = User.create!(email: "jean@example.com", password: "password", user_name: "Jean", region: "FRANCE")
samy = User.create!(email: "samy@example.com", password: "password", user_name: "Samy", region: "FRANCE")
antho = User.create!(email: "antho@example.com", password: "password", user_name: "Antho", region: "FRANCE")
puts 'User finished'

puts 'User Category started'
UserCategory.create!(user: jean, category: transport)
UserCategory.create!(user: jean, category: service_societaux)
UserCategory.create!(user: jean, category: divers)
puts 'for jean'
UserCategory.create!(user: samy, category: transport)
UserCategory.create!(user: samy, category: logement)
UserCategory.create!(user: samy, category: divers)
puts 'for samy'
UserCategory.create!(user: antho, category: transport)
UserCategory.create!(user: antho, category: alimentation)
UserCategory.create!(user: antho, category: divers)
puts 'for antho'
puts 'User Category finished'

puts 'User Challenge started'
UserChallenge.create!(done: true, completed_date: Date.today, user: jean, action: bike)
UserChallenge.create!(done: false, user: jean, action: starfield)
UserChallenge.create!(done: true, completed_date: Date.today, user: jean, action: piss)
puts 'for jean'
UserChallenge.create!(done: false, user: samy, action: bike)
UserChallenge.create!(done: true, completed_date: Date.today, user: samy, action: khaled)
UserChallenge.create!(done: true, completed_date: Date.today, user: samy, action: banana)
puts 'for samy'
UserChallenge.create!(done: false, user: antho, action: bike)
UserChallenge.create!(done: true, completed_date: Date.today, user: antho, action: season)
UserChallenge.create!(done: true, completed_date: Date.today, user: antho, action: vegetable)
puts 'for antho'
puts 'User Challenge finished'

puts 'Seed DONE'
