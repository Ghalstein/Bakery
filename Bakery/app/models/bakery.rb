class Bakery
  
  @@all = []
  attr_reader :name
  def initialize (name)
  	@name = name
  	@@all << self
  end

  def self.all
  	@@all 
  end

  def dessert_ingredients
    DessertIngredient.all.select {|dessert_ingredient| dessert_ingredient.bakery == self}
  end

  def desserts
    self.dessert_ingredients.map {|dessert_ingredient| dessert_ingredient.dessert}
  end

  def ingredients
  	self.dessert_ingredients.map{|dessert_ingredient| dessert_ingredient.ingredient}.uniq
  end

  def average_calories
  	self.dessert_ingredients.map{|dessert_ingredient| dessert_ingredient.dessert.calories}.sum / self.desserts.size 
  end

  def shopping_list
  	self.ingredients.map {|ingredient| ingredient.name}
  end
end