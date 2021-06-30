class AddItemRefToOtherDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :other_diagnoses, :item, foreign_key: true
  end
end
