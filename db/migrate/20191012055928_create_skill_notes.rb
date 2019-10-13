class CreateSkillNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_notes do |t|
      t.integer :user_id
      t.integer :tasks_evaluation_id

      t.timestamps
    end
  end
end
