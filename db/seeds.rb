
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

 ice = Ingredient.create(name: "ice")
 mint = Ingredient.create(name: "mint leaves")
 lemon = Ingredient.create(name: "lemon")

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Spritz")

Dose.create(description: "2 spoon of", ingredient: lemon, cocktail: Cocktail.all.first)
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
