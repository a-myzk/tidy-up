class CreateGoodsDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :goods_diagnoses do |t|
      t.string :question
      t.integer :one_answer
      t.integer :two_answer
      t.integer :three_answer
      t.integer :four_answer
      t.integer :five_answer
      t.string :result
      t.string :comment
      t.timestamps
    end
  end
end
