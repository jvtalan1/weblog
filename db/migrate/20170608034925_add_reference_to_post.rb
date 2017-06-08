class AddReferenceToPost < ActiveRecord::Migration[5.1]
  def change
  	add_reference :posts, :category, index: true
  	add_foreign_key :posts, :categories
  	add_reference :posts, :author, index: true
  	add_foreign_key :posts, :authors
  end
end
