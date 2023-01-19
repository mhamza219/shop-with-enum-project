class AddVideoToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :video, :string
  end
end
