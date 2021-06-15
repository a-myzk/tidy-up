class ChangeColumnDefaultToClothesDiagnoses < ActiveRecord::Migration[5.2]
  def change
    change_column_default :clothes_diagnoses, :one_answer, from: nil, to: 50
    change_column_default :clothes_diagnoses, :two_answer, from: nil, to: 50
    change_column_default :clothes_diagnoses, :three_answer, from: nil, to: 50
    change_column_default :clothes_diagnoses, :four_answer, from: nil, to: 50
    change_column_default :clothes_diagnoses, :five_answer, from: nil, to: 50
  end
end
