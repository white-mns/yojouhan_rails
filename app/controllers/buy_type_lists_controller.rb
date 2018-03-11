class BuyTypeListsController < ApplicationController
  include MyUtility
  before_action :set_buy_type_list, only: [:show, :edit, :update, :destroy]

  # GET /buy_type_lists
  def index
    param_set
    @count	= BuyTypeList.includes([:p_name]).search(params[:q]).result.count()
    @search	= BuyTypeList.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @buy_type_lists	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',@last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_text_assign(params, "p_name_name", "p_name_form")
        reference_number_assign(params, "buy_type_id", "buy_type_id_form")
        reference_number_assign(params, "name", "name_form")
        
    @p_name_form = params["p_name_form"]
        @buy_type_id_form = params["buy_type_id_form"]
        @name_form = params["name_form"]
      end
  # GET /buy_type_lists/1
  #def show
  #end

  # GET /buy_type_lists/new
  #def new
  #  @buy_type_list = BuyTypeList.new
  #end

  # GET /buy_type_lists/1/edit
  #def edit
  #end

  # POST /buy_type_lists
  #def create
  #  @buy_type_list = BuyTypeList.new(buy_type_list_params)

  #  if @buy_type_list.save
  #    redirect_to @buy_type_list, notice: 'Buy type list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /buy_type_lists/1
  #def update
  #  if @buy_type_list.update(buy_type_list_params)
  #    redirect_to @buy_type_list, notice: 'Buy type list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /buy_type_lists/1
  #def destroy
  #  @buy_type_list.destroy
  #  redirect_to buy_type_lists_url, notice: 'Buy type list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_type_list
      @buy_type_list = BuyTypeList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def buy_type_list_params
      params.require(:buy_type_list).permit(:buy_type_id, :name)
    end
end
