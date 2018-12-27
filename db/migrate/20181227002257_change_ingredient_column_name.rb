class ChangeIngredientColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :ingredients, :ingredient, :ingredient_text
  end
end
