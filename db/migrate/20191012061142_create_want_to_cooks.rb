class CreateWantToCooks < ActiveRecord::Migration[5.2]
  def change
    create_table :want_to_cooks do |t|
      t.integer :user_id
      t.integer :my_recipe_id
      t.integer :basic_recipe_id

      t.timestamps
    end
  end
end
