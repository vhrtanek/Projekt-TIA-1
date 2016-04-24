  class UsersController < ApplicationController
  
  before_filter :save_login_state, :only => [:new, :create]

  def new
      #Signup Form
      @user = User.new     
  end

  def create
     @user = User.new(user_params)
     if @user.save
    	flash[:notice] = "You Signed up successfully"
        flash[:color]= "valid"
      else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
      end
      render "new"
  end
  
  def edit
    @user = User.find(params[:id])
  end  

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :salt, :encrypted_password)
  end
  end
