class Post < ApplicationRecord
  has_many :tags
  belongs_to :user

  validates :description, :presence => true
  validates :author, :presence => true
end
