class UsersController < ApplicationController
  respond_to :html, :json
<<<<<<< HEAD
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
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    respond_with @user
  end

   private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
=======
 
  # Other actions omitted.
 
>>>>>>> 17f50905dc62925dc37e744fa184658d5419c08a
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    respond_with @user
  end

<<<<<<< HEAD
end
end
=======
end
>>>>>>> 17f50905dc62925dc37e744fa184658d5419c08a
