class AddItemRefToGoodsDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :goods_diagnoses, :item, foreign_key: true
  end
end
