class CastleStructureMajorTypeNumsController < ApplicationController
  include MyUtility
  before_action :set_castle_structure_major_type_num, only: [:show, :edit, :update, :destroy]

  # GET /castle_structure_major_type_nums
  def index
    param_set
    @count	= CastleStructureMajorTypeNum.includes([:p_name]).search(params[:q]).result.count()
    @search	= CastleStructureMajorTypeNum.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @castle_structure_major_type_nums	= @search.result.per(50)
  end

  def param_set
    last_result = Name.maximum('result_no')
    params["result_no_form"] = params["result_no_form"] ? params["result_no_form"] : sprintf('%d',last_result)
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
        reference_number_assign(params, "result_no", "result_no_form")
        reference_number_assign(params, "generate_no", "generate_no_form")
        reference_number_assign(params, "e_no", "e_no_form")
        reference_number_assign(params, "build_num", "build_num_form")
        reference_number_assign(params, "guard_num", "guard_num_form")
        reference_number_assign(params, "goods_num", "goods_num_form")
        
    @p_name_form = params["p_name_form"]
        @result_no_form = params["result_no_form"]
        @generate_no_form = params["generate_no_form"]
        @e_no_form = params["e_no_form"]
        @build_num_form = params["build_num_form"]
        @guard_num_form = params["guard_num_form"]
        @goods_num_form = params["goods_num_form"]
      end
  # GET /castle_structure_major_type_nums/1
  #def show
  #end

  # GET /castle_structure_major_type_nums/new
  #def new
  #  @castle_structure_major_type_num = CastleStructureMajorTypeNum.new
  #end

  # GET /castle_structure_major_type_nums/1/edit
  #def edit
  #end

  # POST /castle_structure_major_type_nums
  #def create
  #  @castle_structure_major_type_num = CastleStructureMajorTypeNum.new(castle_structure_major_type_num_params)

  #  if @castle_structure_major_type_num.save
  #    redirect_to @castle_structure_major_type_num, notice: 'Castle structure major type num was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /castle_structure_major_type_nums/1
  #def update
  #  if @castle_structure_major_type_num.update(castle_structure_major_type_num_params)
  #    redirect_to @castle_structure_major_type_num, notice: 'Castle structure major type num was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /castle_structure_major_type_nums/1
  #def destroy
  #  @castle_structure_major_type_num.destroy
  #  redirect_to castle_structure_major_type_nums_url, notice: 'Castle structure major type num was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castle_structure_major_type_num
      @castle_structure_major_type_num = CastleStructureMajorTypeNum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def castle_structure_major_type_num_params
      params.require(:castle_structure_major_type_num).permit(:result_no, :generate_no, :e_no, :build_num, :guard_num, :goods_num)
    end
end
