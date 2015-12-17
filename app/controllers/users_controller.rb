class UsersController < ApplicationController
  def index
    # Get all of the users, and show them on the page
    @users = User.all
  end

  def new
    @user = User.new
  end

   def create

    user_details = user_params


    req = Cloudinary::Uploader.upload( params[:file] )

    user_details[:picture] = req["url"]
    @user = User.new user_details

    if @user.save
      redirect_to(root_path)
    else
      render :new

    end
  end

  def show
    @user = User.find( params[:id] )
  end


  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end

