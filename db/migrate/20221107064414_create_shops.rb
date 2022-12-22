class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :product_name
      t.integer :weight
      t.integer :price
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
