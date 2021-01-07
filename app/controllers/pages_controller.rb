class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
  end

  def dashboard
    @user = current_user
    @friends = current_user.friends
    @cars = current_user.cars
  end

end
