class ChangeDatatypeNameOfCategories < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :name, 'integer USING CAST(name AS integer)'
  end
end
