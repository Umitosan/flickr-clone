class Post < ApplicationRecord
  has_many :tags
  has_many :comments
  belongs_to :user
  has_attached_file :avatar, :styles => {
      :thumb => "100x100#",
      :small  => "150x150#",
      :medium => "200x200#" },
      default_url: "/images/:style/missing.png"
  validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates :description, :presence => true
end
