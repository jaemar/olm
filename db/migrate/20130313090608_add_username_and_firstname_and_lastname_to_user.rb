class AddUsernameAndFirstnameAndLastnameToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string

    add_index :users, :username, :unique => true
  end

  def self.down
    remove_column :users, :username
    remove_column :users, :firstname
    remove_column :users, :lastname
  end
end
