class AddTimestampColumn < ActiveRecord::Migration[5.2]
  def change
      add_column :sales, :created_at, :datetime
      add_column :sales, :upated_at, :datetime
  end
end
