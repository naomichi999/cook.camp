class CreateTasksEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks_evaluations do |t|
      t.integer :user_id
      t.string :task_name
      t.float :total_evaluation
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
