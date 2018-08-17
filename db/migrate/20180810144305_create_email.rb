class CreateEmail < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
        t.text :first_name
        t.text :last_name
        t.text :email
    end
  end
end
