class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')

    create_table :products, id: :uuid do |t|
      t.string :title
      t.text :desc
      t.float :price

      t.timestamps
    end
  end
end
