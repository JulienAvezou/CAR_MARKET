class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
  end

  def dashboard
    @user = current_user
    @friends = current_user.friends
    @pending_invitations = current_user.pending_invitations
    @cars = current_user.cars
  end

end
