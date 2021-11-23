class Community < ApplicationRecord
    validates_presence_of  :name, :rules
    belongs_to :user
    has_many :subscriptions
    has_many :subscribers, through: :subscriptions, source: :user
    has_many :posts
   
   
  end