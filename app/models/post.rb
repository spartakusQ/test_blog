class Post < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "author_id"
  # belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                  length: { minimum: 5 }


end
