class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :instructions
  accepts_nested_attributes_for :ingredients, :instructions

end
