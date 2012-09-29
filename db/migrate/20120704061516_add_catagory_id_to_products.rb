class AddCatagoryIdToProducts < ActiveRecord::Migration
  def self.up
  	add_column :products, :categoryid, :integer
  end

  def self.down
  	remove_column :products, :categoryid
  end
end
