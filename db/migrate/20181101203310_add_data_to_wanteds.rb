class AddDataToWanteds < ActiveRecord::Migration[5.2]
  def change
      add_column :wanteds, :initial_offer, :string
      add_column :wanteds, :created_at, :datetime
      add_column :wanteds, :upated_at, :datetime
  end
end
