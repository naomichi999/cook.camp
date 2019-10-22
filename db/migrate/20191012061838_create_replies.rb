class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.integer :inquiry_id
      t.text :reply_content
      t.string :reply_title

      t.timestamps
    end
  end
end