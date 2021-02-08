# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy Cocktails"
Cocktail.destroy_all

puts "Create Cocktails"

Cocktail.create(name: 'Flamingo')
Cocktail.create(name: 'Pink Squirrel')
Cocktail.create(name: 'Blush Lily')
Cocktail.create(name: 'Pink Mojo')


puts "Destroy ingredients"
Ingredient.destroy_all if Rails.env.development?

# puts "Destroy Cocktails"
# Cocktail.destroy_all if Rails.env.development?

# puts "Create ingredients"
# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# ingredients = JSON.parse(open(url).read)
# ingredients["drinks"].each do |ingredient|
#   i = Ingredient.create(name: ingredient["strIngredient1"])
#   puts "create #{i.name}"
# end


 ingredients_array = [
  {
    name: 'Sugar syrup'
  },
  {
    name: 'Lime Juice'
  },
  {
    name: 'Vodka'
  },
  {
    name: 'Orange Juice'
  },
  {
    name: 'Tripple Sec'
  },
  {
    name: 'Vermouth'
  },
  {
    name: 'Grenadine'
  },
  {
    name: 'Whiskey'
  },
  {
    name: 'Rum'
  },
  {
    name: 'Tequila'
  },
  {
    name: 'Cranberry Juice'
  },
  {
    name: 'Cachaca'
  },
  {
    name: 'Pear Juice'
  },
  {
    name: 'Sugar syrup'
  },
  {
    name: 'Sugar syrup'
  },
  {
    name: 'Gin'
  },
  {
    name: 'Applejack'
  },
  {
    name: 'Rhubarb Purée'
  },
  {
    name: 'Pink Peppercorn Syrup'
  },
  {
    name: 'Green Chartreuse'
  },
  {
    name: 'Gooseberry Syrup'
  },
  {
    name: 'Club Soda'
  },
  {
    name: 'Rosé'
  },
  {
    name: 'Pink Vermouth'
  },
  {
    name: 'Blood Orange Juice'
  },
  {
    name: 'Agave Nectar'
  },
  {
    name: 'Cotton Candy'
  },
  {
    name: 'St. Germain Liqueur'
  },
  {
    name: 'Blood Orange Liqueur'
  },
  {
    name: 'Raspberries'
  },
  {
    name: 'Strawberries'
  },
  {
    name: 'Cranberries'
  },
  {
    name: 'White Rum'
  },
  {
    name: 'Cherry Brandy'
  },
  {
    name: 'Cointreau'
  },
  {
    name: 'Basil Leaves'
  },
  {
    name: 'Mint Leaves'
  },
  {
    name: 'Rhubarb'
  },
  {
    name: 'Grapefruit'
  },
  {
    name: 'Pink Grapefruit Juice'
  },
  {
    name: 'Campari'
  },
  {
    name: 'Ginger Syrup'
  },
  {
    name: 'Watermelon'
  },
  {
    name: 'Watermelon Juice'
  },
  {
    name: 'Thyme Syrup'
  },
  {
    name: 'Fresh Thyme'
  },
  {
    name: 'Cherry'
  },
  {
    name: 'Beer'
  },
  {
    name: 'Coca-Cola'
  },
  {
    name: 'Burbon'
  },
  {
    name: 'White Whiskey'
  },
  {
    name: 'Grand Marnier'
  },
  {
    name: 'Coconut Rum'
  },
  {
    name: 'Cane Sugar'
  },
  {
    name: 'Prosecco'
  },
  {
    name: 'Sake'
  },
  {
    name: 'Svedka Cherry'
  },
  {
    name: 'Juniper Berries'
  },
  {
    name: 'Rose Water'
  },
  {
    name: 'Pink Food Coloring'
  }
]

puts "Create ingredients"
ingredients_array.each do |ingredient|
  ing = Ingredient.create(name: ingredient[:name])
  puts "create #{ing.name}"

end
