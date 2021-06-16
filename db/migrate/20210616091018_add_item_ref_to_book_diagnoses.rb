class AddItemRefToBookDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :book_diagnoses, :item, foreign_key: true
  end
end
