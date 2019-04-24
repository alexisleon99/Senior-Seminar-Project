class EmployeeController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employee
  # GET /employee.json
  def index
    @employee = Employee.all
  end

  # GET /employee/1
  # GET /employee/1.json
  def show
    @travel_forms = TravelForm.all
    @expense_reports = ExpenseReport.all
    @request_forms = RequestForm.all
  end

  # GET /employee/new
  def new
    @employee = Employee.new
  end

  # GET /employee/1/edit
  def edit
  end

  # POST /employee
  # POST /employee.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee page was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee/1
  # PATCH/PUT /employee/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee page was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee/1
  # DELETE /employee/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employee_url, notice: 'Employee page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.fetch(:employee, {})
    end
end
