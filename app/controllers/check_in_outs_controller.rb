class CheckInOutsController < ApplicationController
  before_action :set_check_in_out, only: [:show, :edit, :update, :destroy]

  # GET /check_in_outs
  # GET /check_in_outs.json
  def index
    @q = CheckInOut.ransack(params[:q])
    @check_in_outs = @q.result(distinct: true)
    @check_in_out = CheckInOut.new

    @check_in_out_Inactive = CheckInOut.where(:status => 'Inactive')
    @check_in_out_In = CheckInOut.where(:status => 'In')
    @check_in_out_Out = CheckInOut.where(:status => 'Out')


  end

  # GET /check_in_outs/1
  # GET /check_in_outs/1.json
  def show
  end

  # GET /check_in_outs/new
  def new
    @check_in_out = CheckInOut.new
  end

  # GET /check_in_outs/1/edit
  def edit
  end

  # POST /check_in_outs
  # POST /check_in_outs.json
  def create
    @check_in_out = CheckInOut.new(check_in_out_params)

    qrcode = RQRCode::QRCode.new(@check_in_out.check_in_no.to_s)
    # With default options specified explicitly
    png = qrcode.as_png(
        resize_gte_to: false,
        resize_exactly_to: false,
        fill: 'white',
        color: 'black',
        size: 120,
        border_modules: 4,
        module_px_size: 6,
        file: './app/assets/images/Check_in_out_QrCode/'+@check_in_out.check_in_no.to_s+'.png' # path to write
    )

    respond_to do |format|
      if @check_in_out.save

        NewCheckInMailer.notify_check_in(@check_in_out).deliver

        format.html { redirect_to check_in_outs_path, notice: 'Check in out was successfully created.' }
        format.json { render :show, status: :created, location: @check_in_out }
      else
        format.html { render :new }
        format.json { render json: @check_in_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_in_outs/1
  # PATCH/PUT /check_in_outs/1.json
  def update
    respond_to do |format|
      if @check_in_out.update(check_in_out_params)
        format.html { redirect_to check_in_outs_path, notice: 'Check in out was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_in_out }
      else
        format.html { render :edit }
        format.json { render json: @check_in_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_in_outs/1
  # DELETE /check_in_outs/1.json
  def destroy
    @check_in_out.destroy
    respond_to do |format|
      format.html { redirect_to check_in_outs_url, notice: 'Check in out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_check_in_out
    @check_in_out = CheckInOut.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def check_in_out_params
    params.require(:check_in_out).permit(:check_in_no, :customer_code, :status, :check_in_time, :check_out_time, :guest_no, :guest_name, :guest_email, :check_in_date, :check_out_date)
  end
end