class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy, inverse_of: :recipe
  has_many :instructions, dependent: :destroy, inverse_of: :recipe
  accepts_nested_attributes_for :ingredients, :instructions
  validates_presence_of :name, :ingredients, :instructions

  def ingredients_list
    # self.ingredients.split("\n")
  end

  def instructions_list
    # self.instructions.split("\n")
  end
end
