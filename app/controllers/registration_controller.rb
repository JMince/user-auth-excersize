class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user= User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You're the best thanks for signing up"
      redirect_to root_path
    else
      render :new
    end
  end
  
