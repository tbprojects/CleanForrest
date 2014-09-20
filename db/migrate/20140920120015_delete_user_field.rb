class DeleteUserField < ActiveRecord::Migration
  def change
    remove_column :events, :user_id

    add_column :events, :creator_id, :integer
  end
end
