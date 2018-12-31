class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :instructions
  accepts_nested_attributes_for :ingredients


  # def ingredients_attributes=(ingredients_attributes)
  #   # raise ingredients_attributes.inspect
  #   ingredients_attributes.each do |ingredient_attributes|
  #     self.ingredients.build(ingredient_attributes)
  #   end
  # end

end
