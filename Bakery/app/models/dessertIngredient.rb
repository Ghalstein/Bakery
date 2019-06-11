class DessertIngredient
  
  @@all = []
  attr_reader :bakery, :dessert, :ingredient
  def initialize (bakery, dessert, ingredient)
  	@bakery = bakery
  	@dessert = dessert
  	@ingredient = ingredient
  	@@all << self
  end

  def self.all
  	@@all
  end
end