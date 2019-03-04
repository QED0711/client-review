class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @params = params["user"]
    if @params["password"] == @params["confirm_password"]
      @user = User.create(user_params)
    end
    redirect_to users_index_url
  end

  def show
    
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
