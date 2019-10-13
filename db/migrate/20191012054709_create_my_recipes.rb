class CreateMyRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :my_recipes do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :cooking_name
      t.text :cooking_explanation
      t.string :genre_name
      t.text :ingredient
      t.text :how_to_cook
      t.string :cooking_image_id
      t.string :cooking_video
      t.boolean :publishment, default: false, null: false

      t.timestamps
    end
  end
end
