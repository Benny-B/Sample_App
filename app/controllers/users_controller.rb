class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def index

  end

  def show
  	@user = User.find(params[:id])

  end

  def create
  		@user = User.new(params[:user])

  		if @user.save
        flash[:success] = "Welcome to The Sample App "+@user.name
  			redirect_to @user
  		else
  			render :action => "new"
  		end
  end

  def edit

  end

  def update 

  end

  def destroy

  end
end
