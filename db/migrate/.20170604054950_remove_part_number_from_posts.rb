class RemovePartNumberFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :category, :string
    remove_column :posts, :author, :string
  end
end
