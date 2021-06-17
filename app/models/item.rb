class Item < ApplicationRecord
  belongs_to :user
  has_many :categories, dependent: :destroy, inverse_of: :item
  accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: :all_blank
  has_many :clothes_diagnoses, dependent: :destroy
  has_many :goods_diagnoses, dependent: :destroy
  has_many :book_diagnoses, dependent: :destroy
  has_many :other_diagnoses, dependent: :destroy

  validates :name, presence: true
  mount_uploader :image, ImageUploader

  enum status:{
    '-----': 0,
    まだ捨てない: 1,
    検討中: 2,
    捨てる予定: 3,
    捨てた！: 4
  }
end
