class AddCategoryRefToClothesDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :clothes_diagnoses, :category, foreign_key: true
  end
end
