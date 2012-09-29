class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
	  	t.string :first_name 
		t.string :last_name
		t.string :u_name 
		t.string :mailId
		t.decimal :ph_no
		t.string :address
		t.string :password_hash
        t.string :password_salt
	    t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
