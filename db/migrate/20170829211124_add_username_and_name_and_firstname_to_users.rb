class AddUsernameAndNameAndFirstnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :firstname, :string
  end
end
