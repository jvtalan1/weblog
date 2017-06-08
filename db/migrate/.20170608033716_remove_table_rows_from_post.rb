class RemoveTableRowsFromPost < ActiveRecord::Migration[5.1]
  def change
  	remove_column :posts, :author
  	remove_column :posts, :category
  end
end
