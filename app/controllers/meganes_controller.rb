class MeganesController < ApplicationController
  include MyUtility
  before_action :set_megane, only: [:show, :edit, :update, :destroy]

  # GET /meganes
  def index
    param_set
    @count	= Megane.includes([:p_name]).search(params[:q]).result.count()
    @search	= Megane.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @meganes	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',@last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_text_assign(params, "p_name_name", "p_name_form")
        reference_number_assign(params, "result_no", "result_no_form")
        reference_number_assign(params, "generate_no", "generate_no_form")
        reference_number_assign(params, "e_no", "e_no_form")
        reference_number_assign(params, "page_type", "page_type_form")
        reference_number_assign(params, "page_no", "page_no_form")
        reference_number_assign(params, "megane_type_id", "megane_type_id_form")
        reference_number_assign(params, "megane_count", "megane_count_form")
        
    @p_name_form = params["p_name_form"]
        @result_no_form = params["result_no_form"]
        @generate_no_form = params["generate_no_form"]
        @e_no_form = params["e_no_form"]
        @page_type_form = params["page_type_form"]
        @page_no_form = params["page_no_form"]
        @megane_type_id_form = params["megane_type_id_form"]
        @megane_count_form = params["megane_count_form"]
      end
  # GET /meganes/1
  #def show
  #end

  # GET /meganes/new
  #def new
  #  @megane = Megane.new
  #end

  # GET /meganes/1/edit
  #def edit
  #end

  # POST /meganes
  #def create
  #  @megane = Megane.new(megane_params)

  #  if @megane.save
  #    redirect_to @megane, notice: 'Megane was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /meganes/1
  #def update
  #  if @megane.update(megane_params)
  #    redirect_to @megane, notice: 'Megane was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /meganes/1
  #def destroy
  #  @megane.destroy
  #  redirect_to meganes_url, notice: 'Megane was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_megane
      @megane = Megane.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def megane_params
      params.require(:megane).permit(:result_no, :generate_no, :e_no, :page_type, :page_no, :megane_type_id, :megane_count)
    end
end
