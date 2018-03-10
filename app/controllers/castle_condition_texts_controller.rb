class CastleConditionTextsController < ApplicationController
  include MyUtility
  before_action :set_castle_condition_text, only: [:show, :edit, :update, :destroy]

  # GET /castle_condition_texts
  def index
    param_set
    @count	= CastleConditionText.includes([:p_name]).search(params[:q]).result.count()
    @search	= CastleConditionText.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @castle_condition_texts	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',@last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_text_assign(params, "p_name_name", "p_name_form")
    reference_text_assign(params, "condition_text", "condition_text_form")
        
    @result_no_form = params["result_no_form"]
    @e_no_form = params["e_no_form"]
    @p_name_form = params["p_name_form"]
    @condition_text_form = params["condition_text_form"]
  end
  # GET /castle_condition_texts/1
  #def show
  #end

  # GET /castle_condition_texts/new
  #def new
  #  @castle_condition_text = CastleConditionText.new
  #end

  # GET /castle_condition_texts/1/edit
  #def edit
  #end

  # POST /castle_condition_texts
  #def create
  #  @castle_condition_text = CastleConditionText.new(castle_condition_text_params)

  #  if @castle_condition_text.save
  #    redirect_to @castle_condition_text, notice: 'Castle condition text was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /castle_condition_texts/1
  #def update
  #  if @castle_condition_text.update(castle_condition_text_params)
  #    redirect_to @castle_condition_text, notice: 'Castle condition text was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /castle_condition_texts/1
  #def destroy
  #  @castle_condition_text.destroy
  #  redirect_to castle_condition_texts_url, notice: 'Castle condition text was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castle_condition_text
      @castle_condition_text = CastleConditionText.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def castle_condition_text_params
      params.require(:castle_condition_text).permit(:result_no, :generate_no, :e_no, :condition_text)
    end
end
