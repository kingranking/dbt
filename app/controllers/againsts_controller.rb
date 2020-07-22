class AgainstsController < ApplicationController
  def create
    @against = Against.create(user_id: current_user.id, group_id: params[:group_id])
    redirect_to group_messages_path(params[:group_id])
  end
end
