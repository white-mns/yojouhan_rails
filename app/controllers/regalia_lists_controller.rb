class RegaliaListsController < ApplicationController
  include MyUtility
  before_action :set_regalia_list, only: [:show, :edit, :update, :destroy]

  # GET /regalia_lists
  def index
    param_set
    @count	= RegaliaList.search(params[:q]).result.count()
    @search	= RegaliaList.page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @regalia_lists	= @search.result.per(50)
  end

  def param_set
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "regalia_id", "regalia_id_form")
    reference_word_assign(params, "name", "name_form", "cont")
        
    @regalia_id_form = params["regalia_id_form"]
    @name_form = params["name_form"]
  end
  # GET /regalia_lists/1
  #def show
  #end

  # GET /regalia_lists/new
  #def new
  #  @regalia_list = RegaliaList.new
  #end

  # GET /regalia_lists/1/edit
  #def edit
  #end

  # POST /regalia_lists
  #def create
  #  @regalia_list = RegaliaList.new(regalia_list_params)

  #  if @regalia_list.save
  #    redirect_to @regalia_list, notice: 'Regalia list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /regalia_lists/1
  #def update
  #  if @regalia_list.update(regalia_list_params)
  #    redirect_to @regalia_list, notice: 'Regalia list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /regalia_lists/1
  #def destroy
  #  @regalia_list.destroy
  #  redirect_to regalia_lists_url, notice: 'Regalia list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regalia_list
      @regalia_list = RegaliaList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def regalia_list_params
      params.require(:regalia_list).permit(:regalia_id, :name)
    end
end
