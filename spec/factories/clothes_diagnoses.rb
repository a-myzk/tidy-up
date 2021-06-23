FactoryBot.define do
  factory :clothes_diagnosis do
    one_answer { 0 }
    two_answer { 0 }
    three_answer { 0 }
    four_answer { 0 }
    five_answer { 0 }
end

  factory :clothes_diagnosis2, class: User do
    one_answer { 0 }
    two_answer { 0 }
    three_answer { 0 }
    four_answer { 0 }
    five_answer { nil }
  end
end
