class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders, id: :uuid do |t|
      t.uuid :product_id, foreign_key: true, null: false
      t.float :amount, null: false
      t.float :total_price, null: false
      t.integer :region
      t.string :email, null: false

      t.timestamps
    end
  end
end
