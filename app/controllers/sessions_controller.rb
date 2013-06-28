class SessionsController < ApplicationController

	def new

	end

	def create
		
		user = User.find_by_email(params[:session][:email].downcase)
		if user
			#user was found! redirect to user page
			sign_in user
			redirect_to user
		else
			#user wasn't found! generate error page
			flash.now[:error] = "Invalid email/password"
			render :new
		end
	end

	def destroy
		sign_out
		redirect_to "/"
	end


end
