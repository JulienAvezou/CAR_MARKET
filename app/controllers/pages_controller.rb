class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
  end

  def dashboard
    @friends = current_user.friends
    @user = current_user
  end

end
