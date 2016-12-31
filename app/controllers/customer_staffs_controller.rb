class CustomerStaffsController < ApplicationController
  before_action :set_customer_staff, only: [:show, :edit, :update, :destroy]

  # GET /customer_staffs
  # GET /customer_staffs.json
  def index
    @customer_staffs = CustomerStaff.all
  end

  # GET /customer_staffs/1
  # GET /customer_staffs/1.json
  def show
  end

  # GET /customer_staffs/new
  def new
    @customer_staff = CustomerStaff.new
  end

  # GET /customer_staffs/1/edit
  def edit
  end

  # POST /customer_staffs
  # POST /customer_staffs.json
  def create
    @customer_staff = CustomerStaff.new(customer_staff_params)

    respond_to do |format|
      if @customer_staff.save
        format.html { redirect_to @customer_staff, notice: 'Customer staff was successfully created.' }
        format.json { render :show, status: :created, location: @customer_staff }
      else
        format.html { render :new }
        format.json { render json: @customer_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_staffs/1
  # PATCH/PUT /customer_staffs/1.json
  def update
    respond_to do |format|
      if @customer_staff.update(customer_staff_params)
        format.html { redirect_to @customer_staff, notice: 'Customer staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_staff }
      else
        format.html { render :edit }
        format.json { render json: @customer_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_staffs/1
  # DELETE /customer_staffs/1.json
  def destroy
    @customer_staff.destroy
    respond_to do |format|
      format.html { redirect_to customer_staffs_url, notice: 'Customer staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_staff
      @customer_staff = CustomerStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_staff_params
      params.require(:customer_staff).permit(:customer_code, :customer_staff_id, :staff_first_name, :staff_last_name, :staff_email, :staff_phone, :department, :staff_post)
    end
end
