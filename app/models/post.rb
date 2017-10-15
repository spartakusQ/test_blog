class Post < ApplicationRecord
  belongs_to :author
  validates :title, presence: true,
                  length: { minimum: 5 }
end
