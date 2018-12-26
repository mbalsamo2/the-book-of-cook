class Recipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :yeild
      t.string :cook_time
    end
  end
end
