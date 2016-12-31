class RackInfosController < ApplicationController
  before_action :set_rack_info, only: [:show, :edit, :update, :destroy]

  # GET /rack_infos
  # GET /rack_infos.json
  def index
    @rack_infos = RackInfo.all
  end

  # GET /rack_infos/1
  # GET /rack_infos/1.json
  def show
  end

  # GET /rack_infos/new
  def new
    @rack_info = RackInfo.new
  end

  # GET /rack_infos/1/edit
  def edit
  end

  # POST /rack_infos
  # POST /rack_infos.json
  def create
    @rack_info = RackInfo.new(rack_info_params)

    respond_to do |format|
      if @rack_info.save
        format.html { redirect_to @rack_info, notice: 'Rack info was successfully created.' }
        format.json { render :show, status: :created, location: @rack_info }
      else
        format.html { render :new }
        format.json { render json: @rack_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rack_infos/1
  # PATCH/PUT /rack_infos/1.json
  def update
    respond_to do |format|
      if @rack_info.update(rack_info_params)
        format.html { redirect_to @rack_info, notice: 'Rack info was successfully updated.' }
        format.json { render :show, status: :ok, location: @rack_info }
      else
        format.html { render :edit }
        format.json { render json: @rack_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rack_infos/1
  # DELETE /rack_infos/1.json
  def destroy
    @rack_info.destroy
    respond_to do |format|
      format.html { redirect_to rack_infos_url, notice: 'Rack info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rack_info
      @rack_info = RackInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rack_info_params
      params.require(:rack_info).permit(:rack_no, :tpye, :customer_code, :total_unit, :low_unit, :height_unit)
    end
end
