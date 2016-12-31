class PackageInOutsController < ApplicationController
  before_action :set_package_in_out, only: [:show, :edit, :update, :destroy]

  # GET /package_in_outs
  # GET /package_in_outs.json
  def index
    @package_in_outs = PackageInOut.all
  end

  # GET /package_in_outs/1
  # GET /package_in_outs/1.json
  def show
  end

  # GET /package_in_outs/new
  def new
    @package_in_out = PackageInOut.new
  end

  # GET /package_in_outs/1/edit
  def edit
  end

  # POST /package_in_outs
  # POST /package_in_outs.json
  def create
    @package_in_out = PackageInOut.new(package_in_out_params)

    respond_to do |format|
      if @package_in_out.save
        format.html { redirect_to @package_in_out, notice: 'Package in out was successfully created.' }
        format.json { render :show, status: :created, location: @package_in_out }
      else
        format.html { render :new }
        format.json { render json: @package_in_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /package_in_outs/1
  # PATCH/PUT /package_in_outs/1.json
  def update
    respond_to do |format|
      if @package_in_out.update(package_in_out_params)
        format.html { redirect_to @package_in_out, notice: 'Package in out was successfully updated.' }
        format.json { render :show, status: :ok, location: @package_in_out }
      else
        format.html { render :edit }
        format.json { render json: @package_in_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_in_outs/1
  # DELETE /package_in_outs/1.json
  def destroy
    @package_in_out.destroy
    respond_to do |format|
      format.html { redirect_to package_in_outs_url, notice: 'Package in out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package_in_out
      @package_in_out = PackageInOut.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_in_out_params
      params.require(:package_in_out).permit(:ticket_no, :customer_code, :quantity, :package_no, :Courier, :floor, :location, :package_in_time, :package_out_time)
    end
end
