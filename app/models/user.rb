class User < ApplicationRecord
  has_many :posts, :class_name => "Post", :foreign_key => "user_id"  
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
