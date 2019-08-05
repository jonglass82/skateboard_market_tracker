class AddTimeStampToArticles < ActiveRecord::Migration[5.2]
  def change
    add_timestamps(:articles, null: true)
  end
end
