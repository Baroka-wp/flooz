class GroupsController < ApplicationController

  def index
    @groups = current_user.groups.includes(:entities).all
  end

  def new
    @icons = Group.icons
  end

  def create
    @group = current_user.groups.new(group_params)
    if @group.save
      redirect_to user_groups_path(current_user.id)
    else
      render :new
    end
  end
  def show
    @group = Group.find(params[:id])
    @entities = @group.entities
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      flash[:notice] = "Group updated successfully"
      redirect_to user_groups_path(current_user.id)
    else
      render :edit
    end
  end

  def default_group
    name = params[:name]
    icon = name + '.png'
    @group = current_user.groups.new(name: name, icon: icon )
    if @group.save
      redirect_to user_groups_path(current_user.id)
    else
      render :new
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to user_groups_path(current_user.id)
  end

  private
  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
