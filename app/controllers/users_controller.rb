class UsersController < ApplicationController
  
  def show
  @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end

  def user_params
      params.require(:user).permit(:image)
      end
end
