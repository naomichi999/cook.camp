class CreateSectionUnderstandings < ActiveRecord::Migration[5.2]
  def change
    create_table :section_understandings do |t|
      t.integer :user_id
      t.integer :section_id
      t.float :understanding

      t.timestamps
    end
  end
end
