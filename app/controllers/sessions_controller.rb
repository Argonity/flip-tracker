class SessionsController < ApplicationController

  def welcome
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end

  def new
  end

  def create
    #find the user in database
    @user = User.find_by(username: params[:user][:username])
    #does the user exist and is their password correct?
    if @user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Username or password incorrect"
      redirect_to login_path
    end
  end

end