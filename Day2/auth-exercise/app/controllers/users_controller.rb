class UsersController < ApplicationController

  # renders the home page
def home
  @name = current_user ? @current_user.username : "Ironhacker"
end

  def index
    @users = User.all
  end

  # renders the signup form
  def new
    @user = User.new
  end

  # receives form and creates a user from that data
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    else
      render :new
    end
  end

  private

  def user_params
     params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
