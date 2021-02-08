# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Destroy Cocktails"
Cocktail.destroy_all

puts "Create Cocktails"

# example:
# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


flamingo = Cocktail.create(name: 'Flamingo')
flamingo_photo = URI.open('https://mooshujenne.com/wp-content/uploads/2016/06/FeatherFlamingoCocktail1.png')
flamingo.photo.attach(io: flamingo_photo, filename: 'flamingo.png', content_type: 'image/png')


squirrel = Cocktail.create(name: 'Pink Squirrel')
squirrel_photo = URI.open('https://scontent.fbcn8-1.fna.fbcdn.net/v/t1.0-9/51604243_1667087850090357_2723421917531865088_n.jpg?_nc_cat=106&ccb=2&_nc_sid=730e14&_nc_ohc=PSVAFxac_iUAX8SeZ3Z&_nc_ht=scontent.fbcn8-1.fna&oh=c6e1871dbc19c944454911211ce84aa4&oe=604684B8')
squirrel.photo.attach(io: squirrel_photo, filename: 'squirrel.jpg', content_type: 'image/jpg')

blush_lily = Cocktail.create(name: 'Blush Lily')
blush_lily_photo = URI.open('https://img.oola.com/filter:scale/quill/5/3/4/d/e/0/534de043292396ac3f3953d8cc098ff21b0419a1.jpg?mw=600')
blush_lily.photo.attach(io: blush_lily_photo, filename: 'blush_lily.jpg', content_type: 'image/jpg')

pink_mojo = Cocktail.create(name: 'Pink Mojo')
pink_mojo_photo = URI.open('https://assets.rebelmouse.io/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8yMTY3MTM5Ni9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTY1NDc4MjcyMH0.GJF--yWJy8c2XdkuAollITmq8c6kauxUQ5M_B313qkw/img.jpg?quality=80&width=1410')
pink_mojo.photo.attach(io: pink_mojo_photo, filename: 'pink_mojo.jpg', content_type: 'image/jpg')

watermelon_margarita = Cocktail.create(name: 'Watermelon Margarita')
watermelon_margarita_photo = URI.open('https://assets.rebelmouse.io/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8yMTY3MTYwOC9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTY1OTQ1OTczOX0.wp2WBMqEWgYW5sxRHKu8qq383hcKRosCDO79kRDgQHE/img.jpg?quality=80&width=1410')
watermelon_margarita.photo.attach(io: watermelon_margarita_photo, filename: 'watermelon_margarita.jpg', content_type: 'image/jpg')

cupid_arrow = Cocktail.create(name: "Cupid's arrow")
cupid_arrow_photo = URI.open('https://assets.rebelmouse.io/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8yMTY3MTU5Mi9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTYzMDU4MjIxN30.uVL4cwxQQJHUJVSZpq29IQ4QL0WfKl1lAFBSOaNsrDM/img.jpg?quality=80&width=1410')
cupid_arrow.photo.attach(io: cupid_arrow_photo, filename: 'cupid_arrow.jpg', content_type: 'image/jpg')


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
