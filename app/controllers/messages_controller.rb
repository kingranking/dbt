class MessagesController < ApplicationController
  before_action :set_group

  def index
    @message = Message.new
    @messages = @group.messages.includes(:user)   
    @groups = Group.all
  end

  def create
    @message = @group.messages.new(message_params)
    if @message.save
      redirect_to group_messages_path(@group)
    else
      @messages = @group.messages.includes(:user)
      render :index
    end
  end

  private 
  
  def message_params
    if For.exists?(group_id: @group, user_id: current_user.id)
      params.require(:message).permit(:content, :image).merge(user_id: current_user.id, truth: 1)
    else
      params.require(:message).permit(:content, :image).merge(user_id: current_user.id, truth: 0)
    end
  end
  
  def set_group
    @group = Group.find(params[:group_id])
  end
end

