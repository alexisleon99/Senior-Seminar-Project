class ExpenseReportsController < ApplicationController
  before_action :set_expense_report, only: [:show, :edit, :update, :destroy]

  # GET /expense_reports
  # GET /expense_reports.json
  def index
    @expense_reports = ExpenseReport.all
  end
  def approve
    report = set_expense_report
    report.update_attributes(:status => "Approved")

    respond_to do |format|
      format.html { redirect_to payment_manager_path(current_account.accountable_id), notice: 'Request Form was Approved!' }
    end
  end
  def denied
    report = set_expense_report
    report.update_attributes(:status => "Denied")

    respond_to do |format|
      format.html { redirect_to payment_manager_path(current_account.accountable_id), notice: 'Request Form was Denied!' }
    end
  end
  # GET /expense_reports/1
  # GET /expense_reports/1.json
  def show
  end

  # GET /expense_reports/new
  def new
    @expense_report = ExpenseReport.new
  end

  # GET /expense_reports/1/edit
  def edit
  end

  # POST /expense_reports
  # POST /expense_reports.json
  def create
    @account = current_account
    @expense_report = ExpenseReport.new(expense_report_params)
    @expense_report.account_id = @account.id
    @expense_report.estimate2 =(@expense_report.Flight + @expense_report.Hotel + @expense_report.Transportation + @expense_report.Other)
    
    @travel_forms = TravelForm.all
    @expense_reports = ExpenseReport.all
    @expense_reports.each do |expense_report|
    @travel_forms.each do |travel_form|
      @travel_form = @travel_forms.find(@expense_report.travel_forms_id)
      if @expense_report.estimate2 > @travel_form.estimate
          @expense_report.update_attributes(:status => "Denied")
      end
    end
  end
    respond_to do |format|
      if @expense_report.save
        format.html { redirect_to employee_path(current_account.accountable_id), notice: 'Expense report was successfully created.' }
        format.json { render :show, status: :created, location: @expense_report }
      else
        format.html { render :new }
        format.json { render json: @expense_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_reports/1
  # PATCH/PUT /expense_reports/1.json
  def update
    respond_to do |format|
      if @expense_report.update(expense_report_params)
        @expense_report.update_attributes(:estimate2 =>(@expense_report.Flight + @expense_report.Hotel + @expense_report.Transportation + @expense_report.Other))
        @travel_forms = TravelForm.all
           @expense_reports = ExpenseReport.all
           @expense_reports.each do |expense_report|
           @travel_forms.each do |travel_form|
             @travel_form = @travel_forms.find(@expense_report.travel_forms_id)
             if @expense_report.estimate2 > @travel_form.estimate
                 @expense_report.update_attributes(:status => "Denied")
             else
               @expense_report.update_attributes(:status => "pending")
             end
           end
         end
        format.html { redirect_to employee_path(current_account.accountable_id), notice: 'Expense report was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense_report }
      else
        format.html { render :edit }
        format.json { render json: @expense_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_reports/1
  # DELETE /expense_reports/1.json
  def destroy
    @expense_report.destroy
    respond_to do |format|
      format.html { redirect_to expense_reports_url, notice: 'Expense report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_report
      @expense_report = ExpenseReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_report_params
      params.require(:expense_report).permit(:First_name, :Last_Name, :Department, :Flight, :Hotel, :Mileage, :Transportation, :Other, :image_url,:travel_forms_id)
    end
end
