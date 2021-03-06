class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @params = params["user"]
    if @params["password"] == @params["confirm_password"]
      @user = User.create(user_params)
      login_user @user
      redirect_to user_projects_path(@user)
    else
      redirect_to new_user_path
    end
    
  end
  
  
  def sign_in
    @user = User.new
  end
  
  def login
    @user = User.find_by({email: params[:user][:email]})
    if @user and @user.authenticate params[:user][:password] 
      login_user @user
      redirect_to user_path(@user)
    else
      redirect_to users_sign_in_path
    end
    
  end
  
  def logout
    logout_user
    redirect_to '/'
  end
  
  def show
    @user = User.find_by_id(params[:id])
    @projects = @user.projects
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
