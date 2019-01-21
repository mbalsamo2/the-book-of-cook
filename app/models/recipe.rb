class Recipe < ApplicationRecord

  def ingredients_list
    self.ingredients.split("\n")
  end

  def instructions_list
    self.instructions.split("\n")
  end
end
