class Product < ActiveRecord::Base
	belongs_to :categories
	has_many :carts
  	has_many :users, :through => :carts
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :large => "600x600>"}
	validates_presence_of :p_name
	validates_presence_of :p_cost
end
