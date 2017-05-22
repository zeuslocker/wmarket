class AddTypeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :p_type, :integer
  end
end
