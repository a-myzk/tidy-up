class OtherDiagnosis < ApplicationRecord
  has_many :categories, dependent: :destroy
  belongs_to :item

  enum one_answer: {bad_one: 0, normal_one: 1, good_one: 2}
  enum two_answer: {bad_two: 0, normal_two: 1, good_two: 2}
  enum three_answer: {bad_three: 0, normal_three: 1, good_three: 2}
  enum four_answer: {bad_four: 0, normal_four: 1, good_four: 2}
  enum five_answer: {bad_five: 0, normal_five: 1, good_five: 2}
end
