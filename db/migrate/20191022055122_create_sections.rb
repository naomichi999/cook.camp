class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.integer :curriculum_id
      t.integer :section_number
      t.string :section_title

      t.timestamps

      t.index [:section_number], unique: true
    end
  end
end
