class Category < ApplicationRecord
  belongs_to :item
  belongs_to :clothes_diagnosis

  enum name:{
    '-----': 0,
    衣料品: 1,
    日用品: 2,
    書籍: 3,
    その他: 4
  }
end
