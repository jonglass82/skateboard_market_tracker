class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
        t.text :title
        t.string :body
        t.timestamp
    end
  end
end
