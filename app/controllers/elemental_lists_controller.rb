class ElementalListsController < ApplicationController
  include MyUtility
  before_action :set_elemental_list, only: [:show, :edit, :update, :destroy]

  # GET /elemental_lists
  def index
    param_set
    @count	= ElementalList.search(params[:q]).result.count()
    @search	= ElementalList.page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @elemental_lists	= @search.result.per(50)
  end

  def param_set
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "elemental_id", "elemental_id_form")
    reference_word_assign(params, "name", "name_form", "cont")
    
    @elemental_id_form = params["elemental_id_form"]
    @name_form = params["name_form"]
  end
  # GET /elemental_lists/1
  #def show
  #end

  # GET /elemental_lists/new
  #def new
  #  @elemental_list = ElementalList.new
  #end

  # GET /elemental_lists/1/edit
  #def edit
  #end

  # POST /elemental_lists
  #def create
  #  @elemental_list = ElementalList.new(elemental_list_params)

  #  if @elemental_list.save
  #    redirect_to @elemental_list, notice: 'Elemental list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /elemental_lists/1
  #def update
  #  if @elemental_list.update(elemental_list_params)
  #    redirect_to @elemental_list, notice: 'Elemental list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /elemental_lists/1
  #def destroy
  #  @elemental_list.destroy
  #  redirect_to elemental_lists_url, notice: 'Elemental list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elemental_list
      @elemental_list = ElementalList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def elemental_list_params
      params.require(:elemental_list).permit(:elemental_id, :name)
    end
end
