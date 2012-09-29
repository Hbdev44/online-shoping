class User < ActiveRecord::Base
  has_attached_file :user, :styles => { :medium => "300x300>", :thumb => "100x100>"}
  has_many :carts
  has_many :products, :through => :carts
  
  
end
