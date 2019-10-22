class CreateCurriculums < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculums do |t|
      t.integer :chapter_number
      t.string :chapter_title


      t.timestamps
    end
  end
end
