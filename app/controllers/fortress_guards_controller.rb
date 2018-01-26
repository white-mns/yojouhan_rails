class FortressGuardsController < ApplicationController
  include MyUtility
  before_action :set_fortress_guard, only: [:show, :edit, :update, :destroy]

  # GET /fortress_guards
  def index
    param_set
    @count	= FortressGuard.includes([:p_name]).search(params[:q]).result.count()
    @search	= FortressGuard.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @fortress_guards	= @search.result.per(50)
  end

  def param_set
    last_result = Name.maximum('result_no')
    @result_no_form = params["result_no_form"] ? params["result_no_form"] : last_result
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
    reference_number_assign(params, "pysics", "pysics_form")
    reference_number_assign(params, "electric_shock", "electric_shock_form")
    reference_number_assign(params, "cold", "cold_form")
    reference_number_assign(params, "flame", "flame_form")
    reference_number_assign(params, "saint_devil", "saint_devil_form")
        
    @e_no_form = params["e_no_form"]
    @p_name_form = params["p_name_form"]
    @pysics_form = params["pysics_form"]
    @electric_shock_form = params["electric_shock_form"]
    @cold_form = params["cold_form"]
    @flame_form = params["flame_form"]
    @saint_devil_form = params["saint_devil_form"]
  end
  # GET /fortress_guards/1
  #def show
  #end

  # GET /fortress_guards/new
  #def new
  #  @fortress_guard = FortressGuard.new
  #end

  # GET /fortress_guards/1/edit
  #def edit
  #end

  # POST /fortress_guards
  #def create
  #  @fortress_guard = FortressGuard.new(fortress_guard_params)

  #  if @fortress_guard.save
  #    redirect_to @fortress_guard, notice: 'Fortress guard was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /fortress_guards/1
  #def update
  #  if @fortress_guard.update(fortress_guard_params)
  #    redirect_to @fortress_guard, notice: 'Fortress guard was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /fortress_guards/1
  #def destroy
  #  @fortress_guard.destroy
  #  redirect_to fortress_guards_url, notice: 'Fortress guard was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fortress_guard
      @fortress_guard = FortressGuard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fortress_guard_params
      params.require(:fortress_guard).permit(:result_no, :generate_no, :e_no, :pysics, :electric_shock, :cold, :flame, :saint_devil)
    end
end
