# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'json'
require 'pp'

warframe_url = URI('https://raw.githubusercontent.com/WFCD/warframe-drop-data/gh-pages/data/all.json')

warframe_json = Net::HTTP.get(warframe_url)
warframe_item_parse = JSON.parse(warframe_json)
warframe_item_array = warframe_item_parse['blueprintLocations']

# Enemy.delete_all
# Item.delete_all
# Rarity.delete_all

# Creating the Rarity
if Rarity.exists?(['name LIKE ?', 'Common'])
    puts "The Rarity, Common, exists."
else
    Rarity.create( name: 'Common')
end
if Rarity.exists?(['name LIKE ?', 'Uncommon'])
    puts "The Rarity, Uncommon, exists."
else
    Rarity.create( name: 'Uncommon')
end
if Rarity.exists?(['name LIKE ?', 'Rare'])
    puts "The Rarity, Rare, exists."
else
    Rarity.create( name: 'Rare')
end

puts 

# Creating the Enemies
warframe_item_array.each do |w|
    w['enemies'].each do |enemy|
        if Enemy.exists?(name: enemy['enemyName'])
        else
            Enemy.create(name: enemy['enemyName'])
        end
    end
end

all_enemy = Enemy.all
all_enemy.each do |w|
    puts w.name
end

# Creating the Items
warframe_item_array.each do |i|
    if Item.exists?(name: i['itemName'])
        puts "The item already exists"
    else
        Item.create(name: i['itemName'],
                    description: Faker::Food.description,
                    price: Faker::Number.decimal(2))
    end
end

all_items = Item.all
all_items.each do |i|
    puts i.name
    puts i.description
    puts i.price
    puts
end