class CastleStructuresController < ApplicationController
  include MyUtility
  before_action :set_castle_structure, only: [:show, :edit, :update, :destroy]

  # GET /castle_structures
  def index
    param_set
    @count	= CastleStructure.includes(:p_name, :frame_type_name, item: [:unit_type_name, :unit_orig_name, :fuka1_name, :fuka2_name]).search(params[:q]).result.count()
    @search	= CastleStructure.includes(:p_name, :frame_type_name, item: [:unit_type_name, :unit_orig_name, :fuka1_name, :fuka2_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @castle_structures	= @search.result.per(50)
  end

  def param_set
    last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
    reference_word_assign(params, "frame_type_name_name", "frame_type_form", "cont")
    reference_number_assign(params, "i_no", "i_no_form")
    reference_word_assign(params, "item_unit_type_name_name", "unit_type_form", "cont")
    reference_word_assign(params, "item_unit_orig_name_name", "orig_name_form", "cont")
    reference_word_assign(params, "item_name", "name_form", "cont")
    reference_word_assign(params, "item_fuka1_name_name", "fuka1_form", "cont")
    reference_word_assign(params, "item_fuka2_name_name", "fuka2_form", "cont")
    reference_number_assign(params, "item_stock", "stock_form")
        
    @result_no_form = params["result_no_form"]
    @e_no_form = params["e_no_form"]
    @p_name_form = params["p_name_form"]
    @frame_type_form = params["frame_type_form"]
    @i_no_form = params["i_no_form"]
    @unit_type_form = params["unit_type_form"]
    @orig_name_form = params["orig_name_form"]
    @name_form = params["name_form"]
    @fuka1_form = params["fuka1_form"]
    @fuka2_form = params["fuka2_form"]
    @stock_form = params["stock_form"]
  end
  # GET /castle_structures/1
  #def show
  #end

  # GET /castle_structures/new
  #def new
  #  @castle_structure = CastleStructure.new
  #end

  # GET /castle_structures/1/edit
  #def edit
  #end

  # POST /castle_structures
  #def create
  #  @castle_structure = CastleStructure.new(castle_structure_params)

  #  if @castle_structure.save
  #    redirect_to @castle_structure, notice: 'Castle structure was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /castle_structures/1
  #def update
  #  if @castle_structure.update(castle_structure_params)
  #    redirect_to @castle_structure, notice: 'Castle structure was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /castle_structures/1
  #def destroy
  #  @castle_structure.destroy
  #  redirect_to castle_structures_url, notice: 'Castle structure was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castle_structure
      @castle_structure = CastleStructure.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def castle_structure_params
      params.require(:castle_structure).permit(:result_no, :generate_no, :e_no, :frame_type, :i_no)
    end
end
