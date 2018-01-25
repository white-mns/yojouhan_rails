class CastleConditionListsController < ApplicationController
  include MyUtility
  before_action :set_castle_condition_list, only: [:show, :edit, :update, :destroy]

  # GET /castle_condition_lists
  def index
    param_set
    @count	= CastleConditionList.search(params[:q]).result.count()
    @search	= CastleConditionList.page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @castle_condition_lists	= @search.result.per(50)
  end

  def param_set
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "castle_condition_id", "castle_condition_id_form")
    reference_word_assign(params, "name", "name_form","cont")
        
    @castle_condition_id_form = params["castle_condition_id_form"]
    @name_form = params["name_form"]
  end
  # GET /castle_condition_lists/1
  #def show
  #end

  # GET /castle_condition_lists/new
  #def new
  #  @castle_condition_list = CastleConditionList.new
  #end

  # GET /castle_condition_lists/1/edit
  #def edit
  #end

  # POST /castle_condition_lists
  #def create
  #  @castle_condition_list = CastleConditionList.new(castle_condition_list_params)

  #  if @castle_condition_list.save
  #    redirect_to @castle_condition_list, notice: 'Castle condition list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /castle_condition_lists/1
  #def update
  #  if @castle_condition_list.update(castle_condition_list_params)
  #    redirect_to @castle_condition_list, notice: 'Castle condition list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /castle_condition_lists/1
  #def destroy
  #  @castle_condition_list.destroy
  #  redirect_to castle_condition_lists_url, notice: 'Castle condition list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castle_condition_list
      @castle_condition_list = CastleConditionList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def castle_condition_list_params
      params.require(:castle_condition_list).permit(:castle_condition_id, :name)
    end
end
