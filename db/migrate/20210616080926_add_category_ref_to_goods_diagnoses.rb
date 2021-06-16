class AddCategoryRefToGoodsDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :goods_diagnoses, :category, foreign_key: true
  end
end
