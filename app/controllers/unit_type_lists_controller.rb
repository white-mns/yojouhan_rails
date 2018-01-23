class UnitTypeListsController < ApplicationController
  include MyUtility
  before_action :set_unit_type_list, only: [:show, :edit, :update, :destroy]

  # GET /unit_type_lists
  def index
    param_set
    @count	= UnitTypeList.search(params[:q]).result.count()
    @search	= UnitTypeList.page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @unit_type_lists	= @search.result.per(50)
  end

  def param_set
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "type_id", "type_id_form")
    reference_word_assign(params, "name", "name_form", "cont")
    
    @type_id_form = params["type_id_form"]
    @name_form = params["name_form"]
  end
  # GET /unit_type_lists/1
  #def show
  #end

  # GET /unit_type_lists/new
  #def new
  #  @unit_type_list = UnitTypeList.new
  #end

  # GET /unit_type_lists/1/edit
  #def edit
  #end

  # POST /unit_type_lists
  #def create
  #  @unit_type_list = UnitTypeList.new(unit_type_list_params)

  #  if @unit_type_list.save
  #    redirect_to @unit_type_list, notice: 'Unit type list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /unit_type_lists/1
  #def update
  #  if @unit_type_list.update(unit_type_list_params)
  #    redirect_to @unit_type_list, notice: 'Unit type list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /unit_type_lists/1
  #def destroy
  #  @unit_type_list.destroy
  #  redirect_to unit_type_lists_url, notice: 'Unit type list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_type_list
      @unit_type_list = UnitTypeList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unit_type_list_params
      params.require(:unit_type_list).permit(:type_id, :name)
    end
end
