class AddImagesToShop < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :images, :string
  end
end
