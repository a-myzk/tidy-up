class ChangeColumnDefaultToCategories < ActiveRecord::Migration[5.2]
  def change
    change_column_default :categories, :name, from: nil, to: "0"
  end
end
