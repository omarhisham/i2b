class UsersController < ApplicationController
  def new
  	@user = User.new 
  end

  def create
    @user = User.new(params[:user_params])
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end

    def index
    if params[:approved] == "false"
      @users = User.find_all_by_approved(false)
    else
      @users = User.all
    end
  end


   private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
end
