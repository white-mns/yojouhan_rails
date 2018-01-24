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

  def param_set
    last_result = Name.maximum('result_no')
    @result_no_form = params[:q] ? params["result_no_form"] : last_result
    params[:q]  = params[:q] ? params[:q] : {"result_no_gteq_any"=>[last_result], "result_no_lteq_any"=>[last_result]}
    
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
    reference_word_assign(params, "regalia_name_name", "regalia_form", "cont")
        
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
    @regalia_form = params["regalia_form"]
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
