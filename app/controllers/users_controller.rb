class UsersController < ApplicationController
  def index
    @users = User.select { |user| user.id != current_user.id }
    @current_user = current_user
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @cars = @user.cars
    check = false
    Invitation.all.each { |invitation| check = true if (invitation.user_id == @user.id || invitation.user_id == current_user.id)  && (invitation.friend_id == @user.id || invitation.friend_id == current_user.id) && invitation.confirmed == false }
    @check = check
  end

end