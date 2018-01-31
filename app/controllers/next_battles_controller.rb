class NextBattlesController < ApplicationController
  include MyUtility
  before_action :set_next_battle, only: [:show, :edit, :update, :destroy]

  # GET /next_battles
  def index
    param_set
    @count	= NextBattle.includes([:p_name, :status, :fortress_data, :castle_condition]).search(params[:q]).result.count()
    @search	= NextBattle.includes([:p_name, :status, :fortress_data, :castle_condition]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @next_battles	= @search.result.per(50)
  end

  def param_set
    last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
    reference_number_assign(params, "block_no", "block_no_form")
    reference_number_assign(params, "status_acc_profit", "acc_profit_form")
    reference_number_assign(params, "status_rp", "rp_form")
    reference_word_assign(params, "fortress_data_regalia_name_name", "regalia_form", "cont")
        
    @p_name_form = params["p_name_form"]
    @result_no_form = params["result_no_form"]
    @generate_no_form = params["generate_no_form"]
    @block_no_form = params["block_no_form"]
    @e_no_form = params["e_no_form"]
    @acc_profit_form = params["acc_profit_form"]
    @rp_form = params["rp_form"]
    @regalia_form = params["regalia_form"]
  end
  # GET /next_battles/1
  #def show
  #end

  # GET /next_battles/new
  #def new
  #  @next_battle = NextBattle.new
  #end

  # GET /next_battles/1/edit
  #def edit
  #end

  # POST /next_battles
  #def create
  #  @next_battle = NextBattle.new(next_battle_params)

  #  if @next_battle.save
  #    redirect_to @next_battle, notice: 'Next battle was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /next_battles/1
  #def update
  #  if @next_battle.update(next_battle_params)
  #    redirect_to @next_battle, notice: 'Next battle was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /next_battles/1
  #def destroy
  #  @next_battle.destroy
  #  redirect_to next_battles_url, notice: 'Next battle was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_next_battle
      @next_battle = NextBattle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def next_battle_params
      params.require(:next_battle).permit(:result_no, :generate_no, :block_no, :e_no)
    end
end
