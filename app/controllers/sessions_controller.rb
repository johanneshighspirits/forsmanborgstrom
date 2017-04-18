class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log in
      log_in user
      redirect_to user
    else
      # Error when logging in
      flash.now[:danger] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end