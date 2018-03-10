class FrameTypeListsController < ApplicationController
  include MyUtility
  before_action :set_frame_type_list, only: [:show, :edit, :update, :destroy]

  # GET /frame_type_lists
  def index
    param_set
    @count	= FrameTypeList.search(params[:q]).result.count()
    @search	= FrameTypeList.page(params[:page]).search(params[:q])
    @search.sorts = 'id asc' if @search.sorts.empty?
    @frame_type_lists	= @search.result.per(50)
  end

  def param_set
    @last_result = Name.maximum('result_no')
    params[:q]  = params[:q] ? params[:q] : {}
    
    reference_number_assign(params, "frame_type_id", "frame_type_id_form")
    reference_text_assign(params, "name", "name_form")
        
    @frame_type_id_form = params["frame_type_id_form"]
    @name_form = params["name_form"]
  end
  # GET /frame_type_lists/1
  #def show
  #end

  # GET /frame_type_lists/new
  #def new
  #  @frame_type_list = FrameTypeList.new
  #end

  # GET /frame_type_lists/1/edit
  #def edit
  #end

  # POST /frame_type_lists
  #def create
  #  @frame_type_list = FrameTypeList.new(frame_type_list_params)

  #  if @frame_type_list.save
  #    redirect_to @frame_type_list, notice: 'Frame type list was successfully created.'
  #  else
  #    render action: 'new'
  #  end
  #end

  # PATCH/PUT /frame_type_lists/1
  #def update
  #  if @frame_type_list.update(frame_type_list_params)
  #    redirect_to @frame_type_list, notice: 'Frame type list was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /frame_type_lists/1
  #def destroy
  #  @frame_type_list.destroy
  #  redirect_to frame_type_lists_url, notice: 'Frame type list was successfully destroyed.'
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frame_type_list
      @frame_type_list = FrameTypeList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def frame_type_list_params
      params.require(:frame_type_list).permit(:frame_type_id, :name)
    end
end
