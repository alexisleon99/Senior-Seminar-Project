class RequestFormsController < ApplicationController
  before_action :set_request_form, only: [:show, :edit, :update, :destroy]

  # GET /request_forms
  # GET /request_forms.json
  def index
    @request_forms = RequestForm.all
  end
  
  def approve
    request = set_request_form
    request.update_attributes(:status => "Approved")
    @departments = Department.find(@request_form.departments_id)
    
    departmentID = request.departments_id
    departmentAway = request.amount
    @departments.budget = @departments.budget - departmentAway
    @departments.update_attributes(:budget => @departments.budget)
    
   
    @travel_forms = TravelForm.all
    @request_forms = RequestForm.all
    @request_form = set_request_form
     @travel_forms.each do |travel_form| 
       @request_forms.each do |request_form| 
         @travel_form = @travel_forms.find(@request_form.travel_form_id)
          if @travel_forms_id == @request_forms_travel_form_id            
            @travel_form.counter = (@travel_form.counter)+1
          end 
        end
      end
            @travel_form.update_attributes(:counter => @travel_form.counter)
          if @travel_form.count == @travel_form.counter
              @travel_form.update_attributes(:status => "Approved")
            end

    respond_to do |format|
      format.html { redirect_to budget_approver_path(current_account.accountable_id), notice: 'Request Form was Approved!' }
      
      
    end
  end
  def denied
    request = set_request_form
    request.update_attributes(:status => "Denied")
    respond_to do |format|
      format.html { redirect_to budget_approver_path(current_account.accountable_id), notice: 'Request Form was Denied!' }
    end
  end

  # GET /request_forms/1
  # GET /request_forms/1.json
  def show
    @travel_forms = RequestForm.all
    @departments = Department.all
  end

  # GET /request_forms/new
  def new
    @request_form = RequestForm.new
    @travel_forms = TravelForm.all
  end

  # GET /request_forms/1/edit
  def edit
  end

  # POST /request_forms
  # POST /request_forms.json
  def create
    @request_form = RequestForm.new(request_form_params)
    @travel_form = TravelForm.all
    @travel_form = @travel_form.find(@request_form.travel_form_id)
    @travel_form.count = (@travel_form.count)+1
    @travel_form.update_attributes(:count => @travel_form.count)
    respond_to do |format|
      if @request_form.save
        format.html { redirect_to new_request_form_path, notice: 'Request form was successfully created.' }
        format.json { render :show, status: :created, location: @request_form }
      else
        format.html { render :new }
        format.json { render json: @request_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_forms/1
  # PATCH/PUT /request_forms/1.json
  def update
    respond_to do |format|
      if @request_form.update(request_form_params)
        @request_form.update_attribute(:status, "pending")
        format.html { redirect_to employee_path(current_account.accountable_id), notice: 'Request form was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_form }
      else
        format.html { render :edit }
        format.json { render json: @request_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_forms/1
  # DELETE /request_forms/1.json
  def destroy
    @request_form.destroy
    respond_to do |format|
      format.html { redirect_to request_forms_url, notice: 'Request form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_form
      @request_form = RequestForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_form_params
      params.require(:request_form).permit(:amount,:departments_id, :travel_form_id, :status)
    end
end

