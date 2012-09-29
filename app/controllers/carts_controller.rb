class CartsController < ApplicationController
	def index
		 @product=Product.all
		 @carts=Cart.all
	end
	def addToCart
		# 	render :text=>params[:id].to_i.inspect and return false
	
		session[:cart]<<params[:id].to_i
		@products=Product.find_by_id(params[:id])
		#session[:order]=[@products.id,@products.p_nitem]
	
		# @product=Product.find(params[:id])		
		#render :text=>session[:order][2].inspect and return false
		
		
	end
	def updateCart
		#render :text=>params.inspect and return false
		#render :text=>session[:order].has_key?(params[:id]).inspect and return false
		@products=Product.find_by_id(params[:id])	 
		if params[:pitem].to_i>@products.p_nitem
		 	flash[:notice] = "Selecting Wrong no of product.."
		else
			if session[:order].has_key?(params[:id])
				session[:order][params[:id]] =params[:pitem]
			else
				session[:order][params[:id]] = params[:pitem]
			end	
		end
		#render :text=>session[:order][params[:id]].inspect and return false	 

		#session[:add]=[params[:id],params[:pitem]]
		redirect_to "/products"
		#
	end
	def cart
		@order = session[:order] || {}
		@products=[]
		session[:cart]<<params[:id]
		#render :text=>session[:order]["2"].inspect and return false
		@products=Product.all(:conditions=>["id in (?)",session[:cart].uniq])
		#render :text=>session[:add].inspect and return false
		#@cart = Cart.new(params[:cart])
    	# :product_total=params[:product_items]*params[:product_cost]
   		# :product_id=@product.id
    	# :user_id=session[:u_name].id
		#  if @carts.save
		# 	redirect_to "/products"
		# else
		# 	render :action => "addToCart"
		# end
	end


	
end
