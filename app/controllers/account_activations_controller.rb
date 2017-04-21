class AccountActivationsController < ApplicationController

  # Called when user follows activation link from email, e.g.
  # <host>/account_activations/<token>/edit?email=<email address>
  # Where <token> is accessible through params[:id]
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = "Account activated!"
      redirect_to user
    else
      flash[:danger] = "Invalid activation link"
      redirect_to root_url
    end
  end

end
