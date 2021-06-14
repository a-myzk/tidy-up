class Category < ApplicationRecord
  belongs_to :item

  enum name:{
    default_blank: 0,
    clothes: 1, #衣料品
    goods: 2, #日用品
    book: 3, #書籍
    other: 4 #その他
  }
end
