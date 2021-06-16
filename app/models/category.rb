class Category < ApplicationRecord
  belongs_to :item
  belongs_to :clothes_diagnosis, optional: true
  belongs_to :goods_diagnosis, optional: true
  belongs_to :book_diagnosis, optional: true
  belongs_to :other_diagnosis, optional: true

  enum name:{
    '-----': 0,
    衣料品: 1,
    日用品: 2,
    書籍: 3,
    その他: 4
  }
end