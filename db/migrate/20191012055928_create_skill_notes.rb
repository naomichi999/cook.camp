class CreateSkillNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_notes do |t|
      t.integer :user_id
      t.integer :task_id
      t.float :taste_evaluation
      t.float :look_evaluation
      t.float :finesse_evaluation
      t.text :important_point
      t.text :improve_point
      t.text :feeling
      t.string :cooking_image_id

      t.timestamps
    end
  end
end
