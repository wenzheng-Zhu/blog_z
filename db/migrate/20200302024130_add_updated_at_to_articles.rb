class AddUpdatedAtToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :updated_at, :datetime
  end
end
