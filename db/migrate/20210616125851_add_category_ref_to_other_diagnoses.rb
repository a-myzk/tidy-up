class AddCategoryRefToOtherDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :other_diagnoses, :category, foreign_key: true
  end
end
