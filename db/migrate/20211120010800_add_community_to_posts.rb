class AddCommunityToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :community
  end
end
