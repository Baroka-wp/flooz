class EntitiesController < ApplicationController
  load_and_authorize_resource
  def index
    @group = Group.find(params[:group_id])
    @entities = current_user.entities
  end

  def new
    @group = Group.find(params[:group_id])
  end

  def create
    @group = Group.find(params[:group_id])
    @entity = @group.entities.build(entity_params)
    @entity.user = current_user
    if @entity.save
      flash[:notice] = 'Entity created successfully'
      redirect_to user_group_entities_path(current_user.id, @group.id)
    else
      flash[:alert] = 'Entity not created'
      render :new
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
