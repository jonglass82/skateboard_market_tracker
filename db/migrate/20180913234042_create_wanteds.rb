class CreateWanteds < ActiveRecord::Migration[5.2]
  def change
    create_table :wanteds do |t|
        t.text :title
        t.timestamp
    end
  end
end
