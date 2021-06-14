class Category < ApplicationRecord
  belongs_to :item

  enum name:{
    選択してください: 0,
    衣料品: 1, #衣料品
    日用品: 2, #日用品
    書籍: 3, #書籍
    その他: 4 #その他
  }
end
