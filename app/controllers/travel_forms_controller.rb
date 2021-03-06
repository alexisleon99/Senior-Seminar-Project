class TravelFormsController < ApplicationController
  before_action :set_travel_form, only: [:show, :edit, :update, :destroy]
  
  # GET /travel_forms
  # GET /travel_forms.json
  def index
    @travel_forms = TravelForm.all
  end

  # GET /travel_forms/1
  # GET /travel_forms/1.json
  def show
  end

  # GET /travel_forms/new
  def new
    @travel_form = TravelForm.new
    @department = Department.new
  end

  # GET /travel_forms/1/edit
  def edit
  end

  # POST /travel_forms
  # POST /travel_forms.json
  def create
    @account = current_account
    @travel_form = TravelForm.new(travel_form_params)
    @travel_form.account_id = @account.id
    @travel_form.estimate = (@travel_form.Flight_Price + @travel_form.Hotel_Price + @travel_form.Transportation + @travel_form.Other)

    respond_to do |format|
      if @travel_form.save
        
        format.html { redirect_to new_request_form_path, notice: 'Travel form was successfully created.' }
        format.json { render :show, status: :created, location: @travel_form }
      else
        format.html { render :new }
        format.json { render json: @travel_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_forms/1
  # PATCH/PUT /travel_forms/1.json
  def update
    respond_to do |format|
      if @travel_form.update(travel_form_params)
        @travel_form.update_attribute(:status, "pending")
        format.html { redirect_to employee_path(current_account.accountable_id), notice: 'Travel form was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_form }
      else
        format.html { render :edit }
        format.json { render json: @travel_form.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /travel_forms/1
  # DELETE /travel_forms/1.json
  def destroy
    @travel_form.destroy
    respond_to do |format|
      format.html { redirect_to travel_forms_url, notice: 'Travel form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_form
      @travel_form = TravelForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_form_params
      params.require(:travel_form).permit(:First_Name, :Last_Name, :Department, :Start_Date, :End_Date, :Location, :Flight_Price, :Hotel_Price, :Mileage, :Transportation, :Other )
    end
end
