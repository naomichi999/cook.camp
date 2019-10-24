class RemoveUserIdFromSections < ActiveRecord::Migration[5.2]
  def change
    remove_column :sections, :user_id, :integer
  end
end
