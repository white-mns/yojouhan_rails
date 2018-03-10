class MultipleBuyingsController < ApplicationController
  include MyUtility
  before_action :set_multiple_buying, only: [:show, :edit, :update, :destroy]

  # GET /multiple_buyings
  def index
    param_set
    @count	= MultipleBuying.includes([:p_name, :fortress_data]).group([:result_no, :e_no]).search(params[:q]).result.count().keys().size()
    @search	= MultipleBuying.includes([:p_name, :fortress_data]).group([:result_no, :e_no])
        .select("*, max(multiple_buyings.multiple_buying) AS max, min(multiple_buyings.multiple_buying) AS min")
        .page(params[:page]).search(params[:q])

    @search.sorts = 'id asc' if @search.sorts.empty?
    @multiple_buyings	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',@last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_text_assign(params, "p_name_name", "p_name_form")
    reference_number_assign(params, "battle_no", "battle_no_form")
    reference_number_assign(params, "multiple_buying", "multiple_buying_form")
    reference_number_assign(params, "fortress_data_grand", "grand_form")
        
    @result_no_form = params["result_no_form"]
    @p_name_form = params["p_name_form"]
    @e_no_form = params["e_no_form"]
    @battle_no_form = params["battle_no_form"]
    @multiple_buying_form = params["multiple_buying_form"]
    @grand_form = params["grand_form"]
  end
  # GET /multiple_buyings/1
  #def show
  #end

  # GET /multiple_buyings/new
  #def new
  #  @multiple_buying = MultipleBuying.new
  #end

  # GET /multiple_buyings/1/edit
  #def edit
  #end

  # POST /multiple_buyings
  #def create
  #  @multiple_buying = MultipleBuying.new(multiple_buying_params)

  #  if @multiple_buying.save
  #    redirect_to @multiple_buying, notice: 'Multiple buying was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /multiple_buyings/1
  #def update
  #  if @multiple_buying.update(multiple_buying_params)
  #    redirect_to @multiple_buying, notice: 'Multiple buying was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /multiple_buyings/1
  #def destroy
  #  @multiple_buying.destroy
  #  redirect_to multiple_buyings_url, notice: 'Multiple buying was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiple_buying
      @multiple_buying = MultipleBuying.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def multiple_buying_params
      params.require(:multiple_buying).permit(:result_no, :generate_no, :e_no, :battle_no, :multiple_buying)
    end
end
