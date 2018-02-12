class AddEffectListsController < ApplicationController
  include MyUtility
  before_action :set_add_effect_list, only: [:show, :edit, :update, :destroy]

  # GET /add_effect_lists
  def index
    param_set
    @count	= AddEffectList.search(params[:q]).result.count()
    @search	= AddEffectList.page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @add_effect_lists	= @search.result.per(50)
  end

  def param_set
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "add_effect_id", "add_effect_id_form")
    reference_number_assign(params, "name", "name_form")
        
    @add_effect_id_form = params["add_effect_id_form"]
    @name_form = params["name_form"]
  end
  # GET /add_effect_lists/1
  #def show
  #end

  # GET /add_effect_lists/new
  #def new
  #  @add_effect_list = AddEffectList.new
  #end

  # GET /add_effect_lists/1/edit
  #def edit
  #end

  # POST /add_effect_lists
  #def create
  #  @add_effect_list = AddEffectList.new(add_effect_list_params)

  #  if @add_effect_list.save
  #    redirect_to @add_effect_list, notice: 'Add effect list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /add_effect_lists/1
  #def update
  #  if @add_effect_list.update(add_effect_list_params)
  #    redirect_to @add_effect_list, notice: 'Add effect list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /add_effect_lists/1
  #def destroy
  #  @add_effect_list.destroy
  #  redirect_to add_effect_lists_url, notice: 'Add effect list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_effect_list
      @add_effect_list = AddEffectList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def add_effect_list_params
      params.require(:add_effect_list).permit(:add_effect_id, :name)
    end
end
