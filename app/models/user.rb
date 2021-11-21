class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :communities
  has_many :posts
  validates_presence_of :username, :first_name, :last_name

  def full_name
#    current_user.first_name +current_user.last_name
    "#{first_name}  #{last_name}"
  end
end
