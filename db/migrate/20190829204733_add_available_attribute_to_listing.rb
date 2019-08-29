class AddAvailableAttributeToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :available, :boolean, default: false
  end
end
