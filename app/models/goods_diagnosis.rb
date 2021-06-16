class GoodsDiagnosis < ApplicationRecord
  has_many :categories, dependent: :destroy
  belongs_to :item
end
