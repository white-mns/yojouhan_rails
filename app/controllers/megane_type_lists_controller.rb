class MeganeTypeListsController < ApplicationController
  include MyUtility
  before_action :set_megane_type_list, only: [:show, :edit, :update, :destroy]

  # GET /megane_type_lists
  def index
    param_set
    @count	= MeganeTypeList.includes([:p_name]).search(params[:q]).result.count()
    @search	= MeganeTypeList.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @megane_type_lists	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',@last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_text_assign(params, "p_name_name", "p_name_form")
        reference_number_assign(params, "megane_type_id", "megane_type_id_form")
        reference_number_assign(params, "name", "name_form")
        
    @p_name_form = params["p_name_form"]
        @megane_type_id_form = params["megane_type_id_form"]
        @name_form = params["name_form"]
      end
  # GET /megane_type_lists/1
  #def show
  #end

  # GET /megane_type_lists/new
  #def new
  #  @megane_type_list = MeganeTypeList.new
  #end

  # GET /megane_type_lists/1/edit
  #def edit
  #end

  # POST /megane_type_lists
  #def create
  #  @megane_type_list = MeganeTypeList.new(megane_type_list_params)

  #  if @megane_type_list.save
  #    redirect_to @megane_type_list, notice: 'Megane type list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /megane_type_lists/1
  #def update
  #  if @megane_type_list.update(megane_type_list_params)
  #    redirect_to @megane_type_list, notice: 'Megane type list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /megane_type_lists/1
  #def destroy
  #  @megane_type_list.destroy
  #  redirect_to megane_type_lists_url, notice: 'Megane type list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_megane_type_list
      @megane_type_list = MeganeTypeList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def megane_type_list_params
      params.require(:megane_type_list).permit(:megane_type_id, :name)
    end
end
