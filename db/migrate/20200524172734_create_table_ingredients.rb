class CreateTableIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :ingredient_name
      t. timestamps
    end
  end
end
