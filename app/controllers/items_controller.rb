class ItemsController < ApplicationController
  include MyUtility
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    param_set
    @count	= Item.includes([:p_name, :unit_type_name, :unit_orig_name, :fuka1_name, :fuka2_name, :guard_elemental_name]).search(params[:q]).result.count()
    @search	= Item.includes([:p_name, :unit_type_name, :unit_orig_name, :fuka1_name, :fuka2_name, :guard_elemental_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @items	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',@last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
    reference_number_assign(params, "i_no", "i_no_form")
    reference_word_assign(params, "unit_type_name_name", "unit_type_form", "cont")
    reference_word_assign(params, "unit_orig_name_name", "orig_name_form", "cont")
    reference_word_assign(params, "name", "name_form", "cont")
    reference_number_assign(params, "strength", "strength_form")
    reference_word_assign(params, "fuka1_name_name", "fuka1_form", "cont")
    reference_word_assign(params, "fuka2_name_name", "fuka2_form", "cont")
    reference_word_assign(params, "guard_elemental_name_name", "guard_elemental_form", "cont")
    reference_number_assign(params, "stock", "stock_form")
    reference_number_assign(params, "value", "value_form")
    
    @result_no_form = params["result_no_form"]
    @e_no_form = params["e_no_form"]
    @p_name_form = params["p_name_form"]
    @i_no_form = params["i_no_form"]
    @unit_type_form = params["unit_type_form"]
    @orig_name_form = params["orig_name_form"]
    @name_form = params["name_form"]
    @strength_form = params["strength_form"]
    @fuka1_form = params["fuka1_form"]
    @fuka2_form = params["fuka2_form"]
    @guard_elemental_form = params["guard_elemental_form"]
    @stock_form = params["stock_form"]
    @value_form = params["value_form"]
  end
  # GET /items/1
  #def show
  #end

  # GET /items/new
  #def new
  #  @item = Item.new
  #end

  # GET /items/1/edit
  #def edit
  #end

  # POST /items
  #def create
  #  @item = Item.new(item_params)

  #  if @item.save
  #    redirect_to @item, notice: 'Item was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /items/1
  #def update
  #  if @item.update(item_params)
  #    redirect_to @item, notice: 'Item was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /items/1
  #def destroy
  #  @item.destroy
  #  redirect_to items_url, notice: 'Item was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:result_no, :generate_no, :e_no, :i_no, :unit_type, :orig_name, :name, :strength, :fuka1, :fuka2, :guard_elemental, :stock, :value)
    end
end
