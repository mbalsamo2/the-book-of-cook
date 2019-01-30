class Recipe < ApplicationRecord
  validates_presence_of :name, :ingredients, :instructions

  def ingredients_list
    self.ingredients.split("\n")
  end

  def instructions_list
    self.instructions.split("\n")
  end
end
