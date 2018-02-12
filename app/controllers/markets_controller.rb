class MarketsController < ApplicationController
  include MyUtility
  before_action :set_market, only: [:show, :edit, :update, :destroy]

  # GET /markets
  def index
    param_set
    @count	= Market.includes([:p_name]).search(params[:q]).result.count()
    @search	= Market.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @markets	= @search.result.per(50)
  end

  def param_set
    last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
        reference_number_assign(params, "result_no", "result_no_form")
        reference_number_assign(params, "generate_no", "generate_no_form")
        reference_number_assign(params, "market_no", "market_no_form")
        reference_number_assign(params, "unit_type", "unit_type_form")
        reference_number_assign(params, "orig_name", "orig_name_form")
        reference_number_assign(params, "name", "name_form")
        reference_number_assign(params, "value", "value_form")
        reference_number_assign(params, "attack", "attack_form")
        reference_number_assign(params, "biattack", "biattack_form")
        reference_number_assign(params, "grand", "grand_form")
        reference_number_assign(params, "guard_elemental", "guard_elemental_form")
        reference_number_assign(params, "guard_value", "guard_value_form")
        reference_number_assign(params, "forecast", "forecast_form")
        reference_number_assign(params, "caution", "caution_form")
        reference_number_assign(params, "continuance", "continuance_form")
        reference_number_assign(params, "enthusiasm", "enthusiasm_form")
        reference_number_assign(params, "goodwill", "goodwill_form")
        reference_number_assign(params, "charge", "charge_form")
        reference_number_assign(params, "tokushu", "tokushu_form")
        reference_number_assign(params, "fuka1", "fuka1_form")
        reference_number_assign(params, "fuka2", "fuka2_form")
        reference_number_assign(params, "strength", "strength_form")
        reference_number_assign(params, "e_no", "e_no_form")
        
    @p_name_form = params["p_name_form"]
        @result_no_form = params["result_no_form"]
        @generate_no_form = params["generate_no_form"]
        @market_no_form = params["market_no_form"]
        @unit_type_form = params["unit_type_form"]
        @orig_name_form = params["orig_name_form"]
        @name_form = params["name_form"]
        @value_form = params["value_form"]
        @attack_form = params["attack_form"]
        @biattack_form = params["biattack_form"]
        @grand_form = params["grand_form"]
        @guard_elemental_form = params["guard_elemental_form"]
        @guard_value_form = params["guard_value_form"]
        @forecast_form = params["forecast_form"]
        @caution_form = params["caution_form"]
        @continuance_form = params["continuance_form"]
        @enthusiasm_form = params["enthusiasm_form"]
        @goodwill_form = params["goodwill_form"]
        @charge_form = params["charge_form"]
        @tokushu_form = params["tokushu_form"]
        @fuka1_form = params["fuka1_form"]
        @fuka2_form = params["fuka2_form"]
        @strength_form = params["strength_form"]
        @e_no_form = params["e_no_form"]
      end
  # GET /markets/1
  #def show
  #end

  # GET /markets/new
  #def new
  #  @market = Market.new
  #end

  # GET /markets/1/edit
  #def edit
  #end

  # POST /markets
  #def create
  #  @market = Market.new(market_params)

  #  if @market.save
  #    redirect_to @market, notice: 'Market was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /markets/1
  #def update
  #  if @market.update(market_params)
  #    redirect_to @market, notice: 'Market was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /markets/1
  #def destroy
  #  @market.destroy
  #  redirect_to markets_url, notice: 'Market was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market
      @market = Market.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def market_params
      params.require(:market).permit(:result_no, :generate_no, :market_no, :unit_type, :orig_name, :name, :value, :attack, :biattack, :grand, :guard_elemental, :guard_value, :forecast, :caution, :continuance, :enthusiasm, :goodwill, :charge, :tokushu, :fuka1, :fuka2, :strength, :e_no)
    end
end
