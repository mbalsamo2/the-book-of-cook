class AddColumnsIngredientIdAndInsutrctionIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :instruction_id, :integer
    add_column :recipes, :ingredient_id, :integer
  end
end
