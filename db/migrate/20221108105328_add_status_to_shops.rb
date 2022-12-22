class AddStatusToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :status, :integer, default: 0
  end
end
