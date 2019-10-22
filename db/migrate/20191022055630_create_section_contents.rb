class CreateSectionContents < ActiveRecord::Migration[5.2]
  def change
    create_table :section_contents do |t|
      t.integer :section_id
      t.string :section_image_id
      t.text :section_text

      t.timestamps
    end
  end
end
