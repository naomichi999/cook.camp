class RemoveTaskNameFromSkillNote < ActiveRecord::Migration[5.2]
  def change
    remove_column :skill_notes, :task_name, :string
    remove_column :skill_notes, :total_evaluation, :float
  end
end
