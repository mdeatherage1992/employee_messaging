class MessagesController < ApplicationController

def new
  @message = Message.new
end

def create
  @message = Message.new(message_params)
  if @message.save
    redirect_to root_path
    flash[:message] = "Successfully Sent Message"
  end
end

def show
  @message = Message.find_by(id: params[:id])
end



private

def message_params
  params.require(:message).permit(:recipient_id,:sender_id,:body)
end
end
