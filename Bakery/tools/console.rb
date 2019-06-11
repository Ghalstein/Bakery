require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bakery_1 = Bakery.new("garrett's bakery")
bakery_2 = Bakery.new("not garrett's bakery")

dessert_1 = Dessert.new("cake")
dessert_2 = Dessert.new("cookie")
dessert_3 = Dessert.new("ice cream")
dessert_4 = Dessert.new("bread")

ingredient_1 = Ingredient.new("eggs", 60)
ingredient_2 = Ingredient.new("milk", 100)
ingredient_3 = Ingredient.new("flour", 120)
ingredient_4 = Ingredient.new("cream", 100)

b_1_cake_ingredient_1 = DessertIngredient.new(bakery_1, dessert_1, ingredient_1)
b_1_cake_ingredient_2 = DessertIngredient.new(bakery_1, dessert_1, ingredient_2)
b_1_cake_ingredient_3 = DessertIngredient.new(bakery_1, dessert_1, ingredient_3)

b_2_cake_ingredient_1 = DessertIngredient.new(bakery_2, dessert_1, ingredient_1)
b_2_cake_ingredient_2 = DessertIngredient.new(bakery_2, dessert_1, ingredient_2)
b_2_cake_ingredient_3 = DessertIngredient.new(bakery_2, dessert_1, ingredient_3)




Pry.start
