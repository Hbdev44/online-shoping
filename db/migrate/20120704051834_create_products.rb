class CreateProducts < ActiveRecord::Migration
  def self.up
	create_table :products do |t|
		t.string :p_name
		t.string :p_dis
		t.decimal :p_cost
		t.string :p_cat
		t.string :avatar_file_name
		t.string :avatar_content_type
		t.integer :avatar_file_size
		t.datetime :avatar_updated_at
		t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
