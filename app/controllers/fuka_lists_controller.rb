class FukaListsController < ApplicationController
  include MyUtility
  before_action :set_fuka_list, only: [:show, :edit, :update, :destroy]

  # GET /fuka_lists
  def index
    param_set
    @count	= FukaList.search(params[:q]).result.count()
    @search	= FukaList.page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @fuka_lists	= @search.result.per(50)
  end

  def param_set
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "fuka_id", "fuka_id_form")
    reference_word_assign(params, "name", "name_form", "cont")
    
    @fuka_id_form = params["fuka_id_form"]
    @name_form = params["name_form"]
  end
  # GET /fuka_lists/1
  #def show
  #end

  # GET /fuka_lists/new
  #def new
  #  @fuka_list = FukaList.new
  #end

  # GET /fuka_lists/1/edit
  #def edit
  #end

  # POST /fuka_lists
  #def create
  #  @fuka_list = FukaList.new(fuka_list_params)

  #  if @fuka_list.save
  #    redirect_to @fuka_list, notice: 'Fuka list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /fuka_lists/1
  #def update
  #  if @fuka_list.update(fuka_list_params)
  #    redirect_to @fuka_list, notice: 'Fuka list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /fuka_lists/1
  #def destroy
  #  @fuka_list.destroy
  #  redirect_to fuka_lists_url, notice: 'Fuka list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuka_list
      @fuka_list = FukaList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fuka_list_params
      params.require(:fuka_list).permit(:fuka_id, :name)
    end
end
