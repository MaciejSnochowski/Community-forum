class Post < ApplicationRecord
    validates_presence_of :title, :body

    belongs_to :community
    belongs_to :user
    
   
  end