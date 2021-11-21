class Community < ApplicationRecord
    validates_presence_of :url, :name, :rules
    belongs_to :user
    has_many :users
    has_many :posts
   
  end