class AccMeganesController < ApplicationController
  include MyUtility
  before_action :set_acc_megane, only: [:show, :edit, :update, :destroy]

  # GET /acc_meganes
  def index
    param_set
    @count	= AccMegane.includes([:p_name]).search(params[:q]).result.count()
    @search	= AccMegane.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @acc_meganes	= @search.result.per(50)
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
  # GET /acc_meganes/1
  #def show
  #end

  # GET /acc_meganes/new
  #def new
  #  @acc_megane = AccMegane.new
  #end

  # GET /acc_meganes/1/edit
  #def edit
  #end

  # POST /acc_meganes
  #def create
  #  @acc_megane = AccMegane.new(acc_megane_params)

  #  if @acc_megane.save
  #    redirect_to @acc_megane, notice: 'Acc megane was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /acc_meganes/1
  #def update
  #  if @acc_megane.update(acc_megane_params)
  #    redirect_to @acc_megane, notice: 'Acc megane was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /acc_meganes/1
  #def destroy
  #  @acc_megane.destroy
  #  redirect_to acc_meganes_url, notice: 'Acc megane was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acc_megane
      @acc_megane = AccMegane.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def acc_megane_params
      params.require(:acc_megane).permit(:result_no, :generate_no, :e_no, :megane_type_id, :megane_count)
    end
end
