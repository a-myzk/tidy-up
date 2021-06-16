class AddItemRefToClothesDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :clothes_diagnoses, :item, foreign_key: true
  end
end
