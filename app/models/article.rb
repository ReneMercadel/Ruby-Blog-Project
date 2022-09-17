class Article < ApplicationRecord
  # the validation below makes it so that a new article can't be generated if either the title or content fields are empty
  validates :title, :content, presence: true
  has_many :comments
end
