class PagesController < ApplicationController

def home
  if user_signed_in?
  @inbox = Message.where(recipient_id: current_user.id).order(created_at: :desc)
  @sent = Message.where(sender_id: current_user.id).order(created_at: :desc)
  end
end

end
