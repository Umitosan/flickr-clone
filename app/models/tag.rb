class Tag < ApplicationRecord
  belongs_to :post

  validates :label, :presence => true
end
