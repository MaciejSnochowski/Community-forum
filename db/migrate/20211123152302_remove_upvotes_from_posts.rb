class RemoveUpvotesFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :upvotes, :integer
    remove_column :posts, :downvotes, :integer
  end
end
