class AddIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :category_id, :integer
    add_column :posts, :author_id, :integer
  end
end
