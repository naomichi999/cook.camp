class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :section_id
      t.integer :task_number
      t.string :task_title

      t.timestamps

      t.index [:task_title], unique: true
    end
  end
end
