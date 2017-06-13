class AddCategoryIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :category_id, :uuid, null: false
  end
end
