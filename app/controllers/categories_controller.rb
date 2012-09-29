class CategoriesController < ApplicationController
	def index
		@category = Category.all	
	end
	def new
		@category = Category.new
	end
	def create
		@category= Category.new(params[:category])
		if @category.save
			redirect_to "/categories"
		else
			render :action => "new"
		end
	end
	def show
		@category = Category.all
	end
	def edit
		@category = Category.all
		@category= Category.find(params[:id])
	end
	def update
		@category= Category.find(params[:id])
		@category.update_attributes(params[:category])
		redirect_to "/products"
	end
	
	def delete

		@category = Category.find(params[:id])
		@category.delete
		redirect_to "/categories"
		
	end

end
