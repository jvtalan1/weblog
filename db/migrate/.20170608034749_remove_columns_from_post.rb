class RemoveColumnsFromPost < ActiveRecord::Migration[5.1]
  def change
  	remove_column :posts, :category_id
  	remove_column :posts, :author_id
  end
end
