class ProductsController < ApplicationController

	def index
		# @category=Category.all	
		# if params[:name]
		# 	@products=Product.all(:conditon=>{product.categoryid==:name})
		# else
		 	#@products= Product.all
		 	# end		
		 	@products = Product.paginate :page => params[:page], :per_page => 8
			@category=Category.all				
		

		
	end

	def new
		@product = Product.new
		@category=Category.all
		
	end
	def create
		
		@product = Product.new(params[:product])
		@category=Category.all	

		if @product.save
			redirect_to "/products"
		else
			render :action => "index"
		end
	end
	def edit
		@category=Category.all	
		@product = Product.find(params[:id])
		
	end

	def update

		# render :text=> params.inspect and return false
		@category=Category.all	
		@product = Product.find(params[:id])
		@product.update_attributes(params[:product])
		redirect_to "/products"	
	end

	def show
		if params[:catid]
			@products= Product.find_all_by_categoryid(params[:catid])
			@category=Category.all	
			#render :text => @products.inspect and return false
			# render :update do |page|
			# 	page.replace_html "products_list" , "products/show_products"
			# end
		else
			@products = Product.all	
			@category=Category.all	
			# render :update do |page|
			# page.replace_html "products_list" , "products/show_products"
		end
	end
		def show_products
			@products= Product.find_all_by_categoryid(params[:catid])
			@category=Category.all
			render :update do |page|
			page.replace_html "products_list" , :partial=>"show_products"
			end
		end
		def search
			render :text => @params.inspect and return false		
			@product=Product.find(:all, :conditions=>["#{params[:search_by]} LIKE ?", "#{params[:search_name]}%"])
			
		end
		def delete
			@product = Product.find(params[:id])
			@product.delete
			redirect_to "/products"
		end
		def description
			#render :text=> params.inspect and return false
			@category=Category.all	
			@product = Product.find_by_id(params[:id])
		end
		
			def logout
			#render :text=>"hello"
			session[:u_name]=nil
			if session[:u_name]=nil
				flash[:notice] = "You have successfully logged out"
			end
			redirect_to "/products"
		end
end
