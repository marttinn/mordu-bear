class UsersController < ApplicationController

  def new
    #crea un usuario
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  private
    def user_params
      params.require(:user).permit(:name, :lastname, :permissions, :password,
                                   :password_confirmation)
    end

end
