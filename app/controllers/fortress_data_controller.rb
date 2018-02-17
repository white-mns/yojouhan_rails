class FortressDataController < ApplicationController
  include MyUtility
  before_action :set_fortress_datum, only: [:show, :edit, :update, :destroy]

  # GET /fortress_data
  def index
    param_set
    @count	= FortressDatum.includes([:p_name, :regalia_name]).search(params[:q]).result.count()
    @search	= FortressDatum.includes([:p_name, :regalia_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @fortress_datum	= @search.result.per(50)
  end
  
  def all_data
    param_set
    @count	= FortressDatum.includes([:p_name, :regalia_name, :guard, :castle_condition, :next_battle]).search(params[:q]).result.count()
    @search	= FortressDatum.includes([:p_name, :regalia_name, :guard, :castle_condition, :next_battle]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @fortress_datum	= @search.result.per(50)
  end
  
  def and_payoffs
    param_set
    @count	= FortressDatum.includes([:p_name, :regalia_name, :guard, :castle_condition, :next_battle, :payoff, :status]).search(params[:q]).result.count()
    @search	= FortressDatum.includes([:p_name, :regalia_name, :guard, :castle_condition, :next_battle, :payoff, :status]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @fortress_datum	= @search.result.per(50)
  end

  def param_set
    last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
    reference_number_assign(params, "grand", "grand_form")
    reference_number_assign(params, "caution", "caution_form")
    reference_number_assign(params, "continuance", "continuance_form")
    reference_number_assign(params, "enthusiasm", "enthusiasm_form")
    reference_number_assign(params, "goodwill", "goodwill_form")
    reference_number_assign(params, "forecast", "forecast_form")
    reference_number_assign(params, "stock", "stock_form")
    reference_number_assign(params, "high_grade", "high_grade_form")
    reference_number_assign(params, "mob", "mob_form")
    reference_number_assign(params, "drink", "drink_form")
    reference_number_assign(params, "guard_pysics", "pysics_form")
    reference_number_assign(params, "guard_electric_shock", "electric_shock_form")
    reference_number_assign(params, "guard_cold", "cold_form")
    reference_number_assign(params, "guard_flame", "flame_form")
    reference_number_assign(params, "guard_saint_devil", "saint_devil_form")
    reference_word_assign(params, "regalia_name_name", "regalia_form", "cont")
    reference_word_assign(params, "castle_condition_condition_text", "condition_text_form","cont")
    reference_number_assign(params, "next_battle_block_no", "block_no_form")
    reference_number_assign(params, "status_acc_profit", "acc_profit_form")
    reference_number_assign(params, "status_rp", "rp_form")
    reference_number_assign(params, "payoff_payoff", "payoff_form")
    reference_number_assign(params, "payoff_attack", "attack_form")
    reference_number_assign(params, "payoff_support", "support_form")
    reference_number_assign(params, "payoff_defense", "defense_form")
        
    @result_no_form = params["result_no_form"]
    @e_no_form = params["e_no_form"]
    @p_name_form = params["p_name_form"]
    @grand_form = params["grand_form"]
    @caution_form = params["caution_form"]
    @continuance_form = params["continuance_form"]
    @enthusiasm_form = params["enthusiasm_form"]
    @goodwill_form = params["goodwill_form"]
    @forecast_form = params["forecast_form"]
    @stock_form = params["stock_form"]
    @high_grade_form = params["high_grade_form"]
    @mob_form = params["mob_form"]
    @drink_form = params["drink_form"]
    @pysics_form = params["pysics_form"]
    @electric_shock_form = params["electric_shock_form"]
    @cold_form = params["cold_form"]
    @flame_form = params["flame_form"]
    @saint_devil_form = params["saint_devil_form"]
    @regalia_form = params["regalia_form"]
    @condition_text_form = params["condition_text_form"]
    @block_no_form = params["block_no_form"]
    @acc_profit_form = params["acc_profit_form"]
    @rp_form = params["rp_form"]
    @payoff_form = params["payoff_form"]
    @attack_form = params["attack_form"]
    @support_form = params["support_form"]
    @defense_form = params["defense_form"]
  end
  # GET /fortress_data/1
  #def show
  #end

  # GET /fortress_data/new
  #def new
  #  @fortress_datum = FortressDatum.new
  #end

  # GET /fortress_data/1/edit
  #def edit
  #end

  # POST /fortress_data
  #def create
  #  @fortress_datum = FortressDatum.new(fortress_datum_params)

  #  if @fortress_datum.save
  #    redirect_to @fortress_datum, notice: 'Fortress datum was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /fortress_data/1
  #def update
  #  if @fortress_datum.update(fortress_datum_params)
  #    redirect_to @fortress_datum, notice: 'Fortress datum was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /fortress_data/1
  #def destroy
  #  @fortress_datum.destroy
  #  redirect_to fortress_data_url, notice: 'Fortress datum was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fortress_datum
      @fortress_datum = FortressDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fortress_datum_params
      params.require(:fortress_datum).permit(:result_no, :generate_no, :e_no, :grand, :caution, :continuance, :enthusiasm, :goodwill, :forecast, :stock, :high_grade, :mob, :drink, :regalia)
    end
end
