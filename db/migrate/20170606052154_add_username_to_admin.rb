class AddUsernameToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :username, :string
    add_index :admins, :username, unique: true
  end
end
