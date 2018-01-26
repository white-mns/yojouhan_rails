class StatusesController < ApplicationController
  include MyUtility
  before_action :set_status, only: [:show, :edit, :update, :destroy]

  # GET /statuses
  def index
    param_set
    @count	= Status.includes([:p_name]).search(params[:q]).result.count()
    @search	= Status.includes([:p_name]).page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @statuses	= @search.result.per(50)
  end

  def param_set
    last_result = Name.maximum('result_no')
    @result_no_form = params["result_no_form"] ? params["result_no_form"] : last_result
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "result_no", "result_no_form")
    reference_number_assign(params, "e_no", "e_no_form")
    reference_word_assign(params, "p_name_name", "p_name_form", "cont")
    reference_number_assign(params, "acc_profit", "acc_profit_form")
    reference_number_assign(params, "rp", "rp_form")
    reference_number_assign(params, "repute", "repute_form")
    reference_number_assign(params, "charm", "charm_form")
    reference_number_assign(params, "tact", "tact_form")
    reference_number_assign(params, "smile", "smile_form")
    reference_number_assign(params, "elegance", "elegance_form")
    reference_number_assign(params, "knowledge", "knowledge_form")
    reference_number_assign(params, "perseverance", "perseverance_form")
    reference_number_assign(params, "funds", "funds_form")
    reference_number_assign(params, "exp", "exp_form")
    
    @e_no_form = params["e_no_form"]
    @p_name_form = params["p_name_form"]
    @acc_profit_form = params["acc_profit_form"]
    @rp_form = params["rp_form"]
    @repute_form = params["repute_form"]
    @charm_form = params["charm_form"]
    @tact_form = params["tact_form"]
    @smile_form = params["smile_form"]
    @elegance_form = params["elegance_form"]
    @knowledge_form = params["knowledge_form"]
    @perseverance_form = params["perseverance_form"]
    @funds_form = params["funds_form"]
    @exp_form = params["exp_form"]
  end
  # GET /statuses/1
  #def show
  #end

  # GET /statuses/new
  #def new
  #  @status = Status.new
  #end

  # GET /statuses/1/edit
  #def edit
  #end

  # POST /statuses
  #def create
  #  @status = Status.new(status_params)

  #  if @status.save
  #    redirect_to @status, notice: 'Status was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /statuses/1
  #def update
  #  if @status.update(status_params)
  #    redirect_to @status, notice: 'Status was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /statuses/1
  #def destroy
  #  @status.destroy
  #  redirect_to statuses_url, notice: 'Status was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status
      @status = Status.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def status_params
      params.require(:status).permit(:result_no, :generate_no, :e_no, :acc_profit, :rp, :repute, :charm, :tact, :smile, :elegance, :knowledge, :perseverance, :funds, :exp)
    end
end
