class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :upvotes
      t.integer :downvotes
      t.integer :total_members

      t.timestamps
    end
  end
end
