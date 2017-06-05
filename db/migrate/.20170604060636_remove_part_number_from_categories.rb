class RemovePartNumberFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_reference :categories, :post, foreign_key: true
  end
end
