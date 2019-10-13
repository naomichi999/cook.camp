class CreateEveryoneRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :everyone_recipes do |t|
      t.integer :my_recipe_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
