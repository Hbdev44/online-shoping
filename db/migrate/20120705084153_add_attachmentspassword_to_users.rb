class AddAttachmentspasswordToUsers < ActiveRecord::Migration
  def self.up
  	add_column :users, :password, :string
  	remove_column :users,:password_hash
  	remove_column :users,:password_salt
  end

  def self.down
  	remove_column :users,:password
  	add_column :users, :password_hash, :string
  	add_column :users, :password_salt, :string
  end
end
