class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      session[:user] = user.id
      flash[:success] = "You've Succesfully Logged In"
      redirect_to user_path(user)
    end
  end

  def destroy
    reset_session
    render :new
  end

end