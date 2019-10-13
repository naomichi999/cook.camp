class CreateCurriculums < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculums do |t|
      t.integer :skill_note_id
      t.string :chapter_title
      t.string :section_title
      t.string :task_title
      t.text :curriculum_content
      t.string :curriculum_image_id
      t.float :understanding

      t.timestamps
    end
  end
end
