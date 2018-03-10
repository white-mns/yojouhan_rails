class TotalMeganesController < ApplicationController
  include MyUtility
  before_action :set_total_megane, only: [:show, :edit, :update, :destroy]

  # GET /total_meganes
  def index
    param_set
    @count	= TotalMegane.includes([:p_name]).search(params[:q]).result.count()
    @search	= TotalMegane.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @total_meganes	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',@last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_text_assign(params, "p_name_name", "p_name_form")
        reference_number_assign(params, "result_no", "result_no_form")
        reference_number_assign(params, "generate_no", "generate_no_form")
        reference_number_assign(params, "e_no", "e_no_form")
        reference_number_assign(params, "megane_type_id", "megane_type_id_form")
        reference_number_assign(params, "megane_count", "megane_count_form")
        
    @p_name_form = params["p_name_form"]
        @result_no_form = params["result_no_form"]
        @generate_no_form = params["generate_no_form"]
        @e_no_form = params["e_no_form"]
        @megane_type_id_form = params["megane_type_id_form"]
        @megane_count_form = params["megane_count_form"]
      end
  # GET /total_meganes/1
  #def show
  #end

  # GET /total_meganes/new
  #def new
  #  @total_megane = TotalMegane.new
  #end

  # GET /total_meganes/1/edit
  #def edit
  #end

  # POST /total_meganes
  #def create
  #  @total_megane = TotalMegane.new(total_megane_params)

  #  if @total_megane.save
  #    redirect_to @total_megane, notice: 'Total megane was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /total_meganes/1
  #def update
  #  if @total_megane.update(total_megane_params)
  #    redirect_to @total_megane, notice: 'Total megane was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /total_meganes/1
  #def destroy
  #  @total_megane.destroy
  #  redirect_to total_meganes_url, notice: 'Total megane was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_total_megane
      @total_megane = TotalMegane.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def total_megane_params
      params.require(:total_megane).permit(:result_no, :generate_no, :e_no, :megane_type_id, :megane_count)
    end
end
