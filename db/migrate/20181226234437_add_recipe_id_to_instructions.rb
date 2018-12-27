class AddRecipeIdToInstructions < ActiveRecord::Migration[5.2]
  def change
    add_column :instructions, :recipe_id, :integer
  end
end
