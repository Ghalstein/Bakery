class Ingredient
  
  @@all = []
  attr_reader :name, :calories
  def initialize (name, calories)
  	@name = name
    @calories = calories
  	@@all << self
  end

  def ingredients
    DessertIngredient.all.select {|dessert_ingredeint| dessert_ingredeint.ingredient == self}
  end

  def dessert
    self.ingredients.map {|dessert_ingredeint| dessert_ingredeint.dessert}
  end

  def bakery
    self.ingredients.map {|dessert_ingredeint| dessert_ingredeint.bakery}
  end

  def self.all
  	@@all 
  end

  def self.find_by_name (ingredient_name)
    self.all.select{|ingredient_obj| ingredient_obj.name.include?(ingredient_name)}
  end
end