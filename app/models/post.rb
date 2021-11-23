class Post < ApplicationRecord
    validates_presence_of :title, :body, :user_id, :community_id

    belongs_to :community
    belongs_to :user
    has_many :comments
    
   def score
    1
   end
  end