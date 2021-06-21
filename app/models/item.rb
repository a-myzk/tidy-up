class Item < ApplicationRecord
  belongs_to :user
  has_many :clothes_diagnoses, dependent: :destroy
  has_many :goods_diagnoses, dependent: :destroy
  has_many :book_diagnoses, dependent: :destroy
  has_many :other_diagnoses, dependent: :destroy
  has_many :flags, dependent: :destroy

  validates :name, presence: true
  mount_uploader :image, ImageUploader

  enum category: {
    '-----': 0,
    衣料品: 1,
    日用品: 2,
    書籍: 3,
    その他: 4
  }

  enum status: {
    '-------': 0,
    まだ捨てない: 1,
    検討中: 2,
    捨てる予定: 3,
    捨てた！: 4
  }
end
