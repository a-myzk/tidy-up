class Item < ApplicationRecord
  has_many :categories, dependent: :destroy, inverse_of: :item
  accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: :all_blank

  validates :name, presence: true
  mount_uploader :image, ImageUploader
end
