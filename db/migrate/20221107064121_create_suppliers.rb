class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.integer :pincode

      t.timestamps
    end
  end
end
