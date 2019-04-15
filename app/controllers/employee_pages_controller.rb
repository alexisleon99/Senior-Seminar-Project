class EmployeePagesController < ApplicationController

  before_action :set_employee_page, only: [:show, :edit, :update, :destroy]

  # GET /employee_pages
  # GET /employee_pages.json
  def index
    @employee_pages = EmployeePage.all

    respond_to do |format|
      format.html
      format.json {render json: @employee_pages}
    end
  end

  # GET /employee_pages/1
  # GET /employee_pages/1.json
  def show
    @travel_forms = TravelForm.all
    @expense_reports = ExpenseReport.all
  end

  # GET /employee_pages/new
  def new
    @employee_page = EmployeePage.new
  end

  # GET /employee_pages/1/edit
  def edit
  end

  # POST /employee_pages
  # POST /employee_pages.json
  def create
    @employee_page = EmployeePage.new(employee_page_params)
    # @employee_page.employee = Employee.first

    respond_to do |format|
      if @employee_page.save
        format.html { redirect_to @employee_page, notice: 'Employee page was successfully created.' }
        format.json { render :show, status: :created, location: @employee_page }
      else
        format.html { render :new }
        format.json { render json: @employee_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_pages/1
  # PATCH/PUT /employee_pages/1.json
  def update
    respond_to do |format|
      if @employee_page.update(employee_page_params)
        format.html { redirect_to @employee_page, notice: 'Employee page was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_page }
      else
        format.html { render :edit }
        format.json { render json: @employee_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_pages/1
  # DELETE /employee_pages/1.json
  def destroy
    @employee_page.destroy
    respond_to do |format|
      format.html { redirect_to employee_pages_url, notice: 'Employee page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_page
      @employee_page = EmployeePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_page_params
      params.fetch(:employee_page, {})
    end
end
