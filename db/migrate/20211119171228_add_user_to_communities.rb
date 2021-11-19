class AddUserToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :user_id, :integer
    add_index :communities, :user_id
  end
end
