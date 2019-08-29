class RemoveAvailableColumnFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :available, :boolean
  end
end
