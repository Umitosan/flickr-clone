class Post < ApplicationRecord
  has_many :tags
  belongs_to :user
  has_attached_file :avatar, default_url: "/images/:style/missing.png"
  validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates :description, :presence => true
  validates :author, :presence => true
end
