class AddMadeTimesToSkillNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :skill_notes, :made_times, :integer
  end
end
