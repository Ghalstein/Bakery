class Dessert
  
  @@all = []
  def initialize (name)
  	@name = name
  	@@all << self
  end

  def ingredients
  	DessertIngredient.all.select {|dessert_ingredient| dessert_ingredient.dessert == self}
  end

  def bakery
    self.ingredients.find {|dessert_ingredient| dessert_ingredient.bakery}
  end

  def calories
    ingredients.map {|dessert_ingredient| dessert_ingredient.ingredient.calories}.sum
  end
  
  def self.all
  	@@all 
  end
end