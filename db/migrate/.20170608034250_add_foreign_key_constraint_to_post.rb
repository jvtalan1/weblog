class AddForeignKeyConstraintToPost < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :posts, :category
  	add_foreign_key :posts, :author
  end
end
