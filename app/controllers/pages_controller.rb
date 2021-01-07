class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
  end

  def friends
    @friends = current_user.friends
    @user = current_user
  end

  def members
    @members = User.select { |user| user.id != current_user.id }
    @user = current_user
  end
end
