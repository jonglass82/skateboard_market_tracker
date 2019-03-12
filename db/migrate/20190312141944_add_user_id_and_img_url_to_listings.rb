class AddUserIdAndImgUrlToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :user_id, :integer
    add_column :listings, :image_url, :string
  end
end
