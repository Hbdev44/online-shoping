class UsersController < ApplicationController
	def index
		@users=User.all
	end
	def registration
		@user=User.new
	end
	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to "/products"
		else
			render :action=>"registration"
		end
	end
	def login
		
	end
	def authenticate
		#render :text => params.inspect and return false
		@login=User.find_by_u_name_and_password(params[:u_name],params[:password])
		#render :xml => @login and return false
		if @login
			session[:u_name]=@login
			session[:cart]=[]
			session[:order]=Hash.new
			session[:add]=Hash.new
			redirect_to "/products"
		else
			render :action=>"login"
		end
	end	


end
