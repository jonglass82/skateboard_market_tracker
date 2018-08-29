class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
        t.text :item_name
        t.string :description
        t.text :price
        t.timestamp
    end
  end
end
