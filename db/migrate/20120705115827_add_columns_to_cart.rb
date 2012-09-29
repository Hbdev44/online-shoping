class AddColumnsToCart < ActiveRecord::Migration
 def self.up
    add_column :carts, :user_id,   :integer
	add_column :carts, :product_id, :integer
	add_column :carts, :status,    :string
	add_column :carts, :product_cost,:integer
	add_column :carts, :product_items,:integer
	add_column :carts, :product_total,:integer
	add_column :carts, :total_cost,:integer
  end

  def self.down
    remove_column :carts, :user_id
    remove_column :carts, :product_id
    remove_column :carts, :status
    remove_column :carts, :product_cost
    remove_column :carts, :product_items
    remove_column :carts, :status_total
    remove_column :carts, :status_cost
  end
end
