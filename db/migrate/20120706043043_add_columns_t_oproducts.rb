class AddColumnsTOproducts < ActiveRecord::Migration
  def self.up
  	add_column :products, :p_nitem, :integer
  end

  def self.down
  	remove_column :products, :p_nitems
  end
end
