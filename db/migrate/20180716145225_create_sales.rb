class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
        t.string :title
        t.string :price
        t.timestamp
    end
  end
end
