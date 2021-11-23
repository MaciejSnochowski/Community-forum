class RemoveUrlFromCommunities < ActiveRecord::Migration[6.1]
  def change
    remove_column :communities, :url, :string
  end
end
