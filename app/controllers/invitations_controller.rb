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
    @invitation.save

    redirect_to user_path(@friend)
  end

  def confirm
    @friend = User.find(params[:user_id])
    @invitation = current_user.pending_invitations.find_by(user_id: @friend.id)
    @invitation.confirmed = true
    @invitation.save
    redirect_to user_path(@friend)
  end

  private

  def invitation_params
    params.require(:invitation).permit(:message)
  end

end
