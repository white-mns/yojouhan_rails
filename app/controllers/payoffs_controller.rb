class PayoffsController < ApplicationController
  include MyUtility
  before_action :set_payoff, only: [:show, :edit, :update, :destroy]

  # GET /payoffs
  def index
    param_set
    @count	= Payoff.includes([:p_name, :next_battle]).search(params[:q]).result.count()
    @search	= Payoff.includes([:p_name, :next_battle]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @payoffs	= @search.result.per(50)
  end

  def param_set
    last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
    reference_number_assign(params, "mob", "mob_form")
    reference_number_assign(params, "payoff", "payoff_form")
    reference_number_assign(params, "attack", "attack_form")
    reference_number_assign(params, "support", "support_form")
    reference_number_assign(params, "defense", "defense_form")
    reference_number_assign(params, "destroy", "destroy_form")
    reference_number_assign(params, "special", "special_form")
    reference_number_assign(params, "selling", "selling_form")
    reference_number_assign(params, "income", "income_form")
    reference_number_assign(params, "spending", "spending_form")
    reference_number_assign(params, "profit", "profit_form")
    reference_number_assign(params, "loss", "loss_form")
    reference_number_assign(params, "next_battle_block_no", "block_no_form")
        
    @result_no_form = params["result_no_form"]
    @e_no_form = params["e_no_form"]
    @p_name_form = params["p_name_form"]
    @mob_form = params["mob_form"]
    @payoff_form = params["payoff_form"]
    @attack_form = params["attack_form"]
    @support_form = params["support_form"]
    @defense_form = params["defense_form"]
    @destroy_form = params["destroy_form"]
    @special_form = params["special_form"]
    @selling_form = params["selling_form"]
    @income_form = params["income_form"]
    @spending_form = params["spending_form"]
    @profit_form = params["profit_form"]
    @loss_form = params["loss_form"]
    @block_no_form = params["block_no_form"]
  end
  # GET /payoffs/1
  #def show
  #end

  # GET /payoffs/new
  #def new
  #  @payoff = Payoff.new
  #end

  # GET /payoffs/1/edit
  #def edit
  #end

  # POST /payoffs
  #def create
  #  @payoff = Payoff.new(payoff_params)

  #  if @payoff.save
  #    redirect_to @payoff, notice: 'Payoff was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /payoffs/1
  #def update
  #  if @payoff.update(payoff_params)
  #    redirect_to @payoff, notice: 'Payoff was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /payoffs/1
  #def destroy
  #  @payoff.destroy
  #  redirect_to payoffs_url, notice: 'Payoff was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payoff
      @payoff = Payoff.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def payoff_params
      params.require(:payoff).permit(:result_no, :generate_no, :e_no, :mob, :payoff, :attack, :support, :defense, :defeat, :special, :selling, :income, :spending, :profit, :loss)
    end
end
