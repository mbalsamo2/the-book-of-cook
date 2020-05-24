class RemoveInstructionsAndIngredientsColumnsFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :instructions
    remove_column :recipes, :ingredients
  end
end
