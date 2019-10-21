class AddReplyTitleToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :reply_title, :string
  end
end
