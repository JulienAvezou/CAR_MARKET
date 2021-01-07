class AddMessageToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_column :invitations, :message, :string, default: ""
  end
end
