class InvitationsController < ApplicationController
  def new
    @friend = User.find(params[:user_id])
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @friend = User.find(params[:user_id])
    @invitation.user = current_user
    @invitation.friend_id = @friend.id
    @invitation.confirmed = true
    @invitation.save

    redirect_to user_path(@friend)
  end

  def invitation_params
    params.require(:invitation).permit(:message)
  end

  # def confirm
  #   @friend = User.find(params[:user_id])
  #   @invitation = Invitation.find { |invite| invite.friend_id == @friend.id && invite.user_id == current_user.id }
  #   @invitation.confirmed = true
  #   redirect_to user_path(@friend)
  # end

end
