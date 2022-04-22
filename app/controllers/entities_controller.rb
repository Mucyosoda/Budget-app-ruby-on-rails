class EntitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group
  before_action :set_entity, only: [:show, :edit, :update, :destroy]

  # GET groups/1/entities
  def index
    @entities = @group.entities
  end

  # GET groups/1/entities/1
  def show
  end

  # GET groups/1/entities/new
  def new
    @entity = @group.entities.build
  end

  # GET groups/1/entities/1/edit
  def edit
  end

  # POST groups/1/entities
  def create
    @entity = @group.entities.build(entity_params)

    if @entity.save
      redirect_to(@entity.group)
    else
      render action: 'new'
    end
  end

  # PUT groups/1/entities/1
  def update
    if @entity.update_attributes(entity_params)
      redirect_to([@entity.group, @entity], notice: 'Entity was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE groups/1/entities/1
  def destroy
    @entity.destroy

    redirect_to group_entities_url(@group)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = current_user.groups.find(params[:group_id])
    end

    def set_entity
      @entity = @group.entities.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entity_params
      params.require(:entity).permit(:name, :amount, :group_id)
    end
end
