class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates_presence_of :ingredient_name
end
