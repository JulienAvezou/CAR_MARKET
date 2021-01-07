class UsersController < ApplicationController
  def index
    @users = User.select { |user| user.id != current_user.id }
    @current_user = current_user
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
  end

end