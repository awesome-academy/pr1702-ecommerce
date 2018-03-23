class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    redirect_to root_url
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.send_activation_email
      flash[:info] = t "Check_mail"
      redirect_to root_url
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
        :password_confirmation, :address)
    end
end
