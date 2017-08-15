class AddNewFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :phone, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
