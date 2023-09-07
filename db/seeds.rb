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
transport = Category.create!(title: "Transport", category_color: "#146FA3")
alimentation = Category.create!(title: "Alimentation", category_color: "#579852")
logement = Category.create!(title: "Logement", category_color: "#DD403A")
service_societaux = Category.create!(title: "Services Societaux", category_color: "#F5CB5C")
divers = Category.create!(title: "Divers", category_color: "#471d5e")
puts 'Category finished'

puts 'ACTION started'
piss = Action.create!(name: "Faire pipi sous la douche", span: 3.weeks, value: 10, category: divers, icon: 'icons8-environment.svg')
bike = Action.create!(name: "Faire du vélo", span: 1.day, value: 20, category: transport, icon: 'icons8-bike.svg')
vegetable = Action.create!(name: "Manger des légumes", span: 2.weeks, value: 30, category: alimentation, icon: 'icons8-vegetables.svg')
season = Action.create!(name: "Manger des truc de saisons", span: 2.months, value: 40, category: alimentation, icon: 'icons8-vegetables.svg')
khaled = Action.create!(name: "Another one", span: 13.months, value: 50, category: logement, icon: 'icons8-home.svg')
starfield = Action.create!(name: "Acheter le jeu le  Septembre", span: 2.years, value: 60, category: service_societaux, icon: 'icons8-user-groups.svg')
banana = Action.create!(name: "Peanut Butter Jeally Time", span: 9.days, value: 70, category: divers, icon: 'icons8-environment.svg')

tri_dechets = Action.create!(name: "Trier ses déchets", span: 1.week, value: 15, category: service_societaux, icon: 'icons8-user-groups.svg')
stop_pub = Action.create!(name: "Coller un 'stop-pub' sur sa boîte aux lettres", span: 2.weeks, value: 25, category: divers, icon: 'icons8-environment.svg')
no_littering = Action.create!(name: "Ne rien jeter par terre", span: 3.days, value: 20, category: divers, icon: 'icons8-environment.svg')
moderate_heating = Action.create!(name: "Chauffer sans excès sa maison", span: 1.month, value: 30, category: logement, icon: 'icons8-home.svg')
limit_ac_usage = Action.create!(name: "Limiter l'usage de la climatisation l'été", span: 2.months, value: 25, category: logement, icon: 'icons8-home.svg')
turn_off_appliances = Action.create!(name: "Éteindre complètement les appareils électriques", span: 1.day, value: 10, category: divers, icon: 'icons8-environment.svg')
unplug_chargers = Action.create!(name: "Débrancher les chargeurs lorsqu'ils ne servent pas", span: 1.week, value: 15, category: divers, icon: 'icons8-environment.svg')
turn_off_lights = Action.create!(name: "Éteindre la lumière en sortant d’une pièce", span: 2.days, value: 10, category: divers, icon: 'icons8-environment.svg')
led_bulbs = Action.create!(name: "Privilégier les ampoules LED", span: 1.month, value: 25, category: divers, icon: 'icons8-environment.svg')
low_temp_laundry = Action.create!(name: "Faire sa lessive à basse température", span: 2.weeks, value: 30, category: divers, icon: 'icons8-environment.svg')
drink_tap_water = Action.create!(name: "Boire l'eau du robinet", span: 1.month, value: 20, category: alimentation, icon: 'icons8-vegetables.svg')
take_showers = Action.create!(name: "Prendre des douches plutôt que des bains", span: 2.weeks, value: 25, category: logement, icon: 'icons8-home.svg')
control_shower_flow = Action.create!(name: "Contrôler le débit d’eau lors d’une douche", span: 2.weeks, value: 20, category: logement, icon: 'icons8-home.svg')
pee_in_shower = Action.create!(name: "Faire pipi sous la douche", span: 1.week, value: 15, category: divers, icon: 'icons8-environment.svg')
dont_flush_toilet = Action.create!(name: "Ne rien jeter dans les toilettes", span: 3.weeks, value: 15, category: divers, icon: 'icons8-environment.svg')
dont_leave_tap_open = Action.create!(name: "Ne pas laisser le robinet ouvert", span: 2.weeks, value: 10, category: logement, icon: 'icons8-home.svg')
collect_unused_water = Action.create!(name: "Récupérer les eaux inutilisées", span: 2.weeks, value: 15, category: logement, icon: 'icons8-home.svg')
collect_rainwater = Action.create!(name: "Recueillir l’eau de pluie pour arroser ses plantes", span: 1.month, value: 20, category: logement, icon: 'icons8-home.svg')
use_natural_fertilizers = Action.create!(name: "Préférer les engrais naturels", span: 1.month, value: 15, category: logement, icon: 'icons8-home.svg')
use_reusable_coffee_filter = Action.create!(name: "Utiliser un filtre à café lavable", span: 2.weeks, value: 15, category: alimentation, icon: 'icons8-vegetables.svg')
avoid_disposable_batteries = Action.create!(name: "Eviter les produits à piles", span: 3.weeks, value: 10, category: divers, icon: 'icons8-environment.svg')
use_eco_friendly_search_engine = Action.create!(name: "Utiliser un moteur de recherche écolo", span: 1.month, value: 20, category: service_societaux, icon: 'icons8-user-groups.svg')
digitize_instead_of_print = Action.create!(name: "Numériser plutôt que photocopier ou imprimer", span: 2.weeks, value: 15, category: divers, icon: 'icons8-environment.svg')
use_printed_sheets_as_scraps = Action.create!(name: "Utiliser les feuilles imprimées comme brouillons", span: 1.month, value: 10, category: divers, icon: 'icons8-environment.svg')
repair_instead_of_replace = Action.create!(name: "Réparer plutôt que remplacer", span: 2.weeks, value: 15, category: divers, icon: 'icons8-environment.svg')
rent_or_borrow = Action.create!(name: "Louer ou emprunter", span: 1.month, value: 20, category: divers, icon: 'icons8-environment.svg')
buy_secondhand = Action.create!(name: "Acheter d’occasion", span: 3.weeks, value: 15, category: divers, icon: 'icons8-environment.svg')
avoid_exotic_wood_furniture = Action.create!(name: "Fuir les meubles en bois exotiques", span: 2.months, value: 10, category: logement, icon: 'icons8-home.svg')
recycle_as_much_as_possible = Action.create!(name: "Recycler autant que possible", span: 1.month, value: 15, category: divers, icon: 'icons8-environment.svg')
quit_smoking = Action.create!(name: "Arrêter de fumer", span: 2.months, value: 30, category: divers, icon: 'icons8-environment.svg')
educate_others = Action.create!(name: "Informer son entourage et ses enfants", span: 2.weeks, value: 10, category: divers, icon: 'icons8-environment.svg')

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
UserChallenge.create!(done: true, completed_date: Date.today, user: jean, action: tri_dechets)
UserChallenge.create!(done: false, user: jean, action: turn_off_appliances)
UserChallenge.create!(done: false, user: jean, action: collect_rainwater)
UserChallenge.create!(done: true, completed_date: Date.today, user: jean, action: use_eco_friendly_search_engine)
puts 'for jean'
UserChallenge.create!(done: false, user: samy, action: bike)
UserChallenge.create!(done: true, completed_date: Date.today, user: samy, action: khaled)
UserChallenge.create!(done: true, completed_date: Date.today, user: samy, action: banana)
UserChallenge.create!(done: true, completed_date: Date.today, user: samy, action: stop_pub)
UserChallenge.create!(done: true, completed_date: Date.today, user: samy, action: limit_ac_usage)
UserChallenge.create!(done: false, user: samy, action: use_natural_fertilizers)
UserChallenge.create!(done: true, completed_date: Date.today, user: samy, action: digitize_instead_of_print)
puts 'for samy'
UserChallenge.create!(done: false, user: antho, action: bike)
UserChallenge.create!(done: true, completed_date: Date.today, user: antho, action: season)
UserChallenge.create!(done: true, completed_date: Date.today, user: antho, action: vegetable)
UserChallenge.create!(done: true, completed_date: Date.today, user: antho, action: moderate_heating)
UserChallenge.create!(done: false, user: antho, action: control_shower_flow)
UserChallenge.create!(done: false, user: antho, action: use_reusable_coffee_filter)
UserChallenge.create!(done: true, completed_date: Date.today, user: antho, action: use_printed_sheets_as_scraps)
puts 'for antho'
puts 'User Challenge finished'

puts 'Seed DONE'
