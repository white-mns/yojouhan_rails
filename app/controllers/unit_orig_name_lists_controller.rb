class UnitOrigNameListsController < ApplicationController
  include MyUtility
  before_action :set_unit_orig_name_list, only: [:show, :edit, :update, :destroy]

  # GET /unit_orig_name_lists
  def index
    param_set
    @count	= UnitOrigNameList.search(params[:q]).result.count()
    @search	= UnitOrigNameList.page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @unit_orig_name_lists	= @search.result.per(50)
  end

  def param_set
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "orig_name_id", "orig_name_id_form")
    reference_word_assign(params, "name", "name_form", "cont")
    
    @orig_name_id_form = params["orig_name_id_form"]
    @name_form = params["name_form"]
  end
  # GET /unit_orig_name_lists/1
  #def show
  #end

  # GET /unit_orig_name_lists/new
  #def new
  #  @unit_orig_name_list = UnitOrigNameList.new
  #end

  # GET /unit_orig_name_lists/1/edit
  #def edit
  #end

  # POST /unit_orig_name_lists
  #def create
  #  @unit_orig_name_list = UnitOrigNameList.new(unit_orig_name_list_params)

  #  if @unit_orig_name_list.save
  #    redirect_to @unit_orig_name_list, notice: 'Unit orig name list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /unit_orig_name_lists/1
  #def update
  #  if @unit_orig_name_list.update(unit_orig_name_list_params)
  #    redirect_to @unit_orig_name_list, notice: 'Unit orig name list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /unit_orig_name_lists/1
  #def destroy
  #  @unit_orig_name_list.destroy
  #  redirect_to unit_orig_name_lists_url, notice: 'Unit orig name list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_orig_name_list
      @unit_orig_name_list = UnitOrigNameList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unit_orig_name_list_params
      params.require(:unit_orig_name_list).permit(:orig_name_id, :name)
    end
end
