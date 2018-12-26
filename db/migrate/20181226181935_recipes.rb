class Recipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :directions
    end
  end
end
