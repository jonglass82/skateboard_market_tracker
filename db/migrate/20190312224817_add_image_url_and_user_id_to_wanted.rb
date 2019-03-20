class AddImageUrlAndUserIdToWanted < ActiveRecord::Migration[5.2]
  def change
    add_column :wanteds, :image_url, :string
    add_column :wanteds, :user_id, :integer
  end
end
