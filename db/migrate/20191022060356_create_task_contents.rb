class CreateTaskContents < ActiveRecord::Migration[5.2]
  def change
    create_table :task_contents do |t|
      t.integer :task_id
      t.string :task_image_id
      t.text :task_text

      t.timestamps
    end
  end
end
