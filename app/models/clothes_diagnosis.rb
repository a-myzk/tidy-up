class ClothesDiagnosis < ApplicationRecord
has_many :categories, dependent: :destroy, inverse_of: :clothes_diagnosis
end
