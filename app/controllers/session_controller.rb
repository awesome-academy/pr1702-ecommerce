class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      if user.activated?
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        log_in user
        redirect_to user
      else
        flash[:warning] = t "not_active"
        redirect_to root_url
      end
    else
      flash.now[:danger] = t "Invalid"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
