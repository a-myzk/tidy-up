class Item < ApplicationRecord
  has_many :categories

  validates :name, presence: true
  mount_uploader :image, ImageUploader
end
