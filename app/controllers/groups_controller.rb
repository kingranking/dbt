class GroupsController < ApplicationController

  def index
    @groups = Group.all
    @group = Group.where(id: '1')
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: '作成しました'
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def show
    @group = Group.find(params[:id])
    if For.exists?(group_id: @group, user_id: current_user.id) || Against.exists?(group_id: @group, user_id: current_user.id)
      redirect_to group_messages_path(@group)
    else

    end
  end

  def update
    @group = Group.find(params[:id])
    if @group.save
      redirect_to root_path, notice: '更新しました'
    else
      render :edit
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :detail)
  end

end
