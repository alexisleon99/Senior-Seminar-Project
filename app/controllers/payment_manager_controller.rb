class PaymentManagerController < ApplicationController
  before_action :set_payment_manager, only: [:show, :edit, :update, :destroy]

  # GET /payment_manager
  # GET /payment_manager.json
  def index
    @payment_manager = PaymentManager.all
  end



  # GET /payment_manager/1
  # GET /payment_manager/1.json
  def show
    @expense_reports = ExpenseReport.all
    @travel_forms = TravelForm.all
    @request_forms = RequestForm.all

  end

  # GET /payment_manager/new
  def new
    @payment_manager = PaymentManager.new
  end

  # GET /payment_manager/1/edit
  def edit
  end

  # POST /payment_manager
  # POST /payment_manager.json
  def create
    @payment_manager = PaymentManager.new(payment_manager_params)

    respond_to do |format|
      if @payment_manager.save
        format.html { redirect_to @payment_manager, notice: 'Payment manager page was successfully created.' }
        format.json { render :show, status: :created, location: @payment_manager }
      else
        format.html { render :new }
        format.json { render json: @payment_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_manager/1
  # PATCH/PUT /payment_manager/1.json
  def update
    respond_to do |format|
      if @payment_manager.update(payment_manager_params)
        format.html { redirect_to @payment_manager, notice: 'Payment manager page was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_manager }
      else
        format.html { render :edit }
        format.json { render json: @payment_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  def approve

  end

  def denied

  end



  # DELETE /payment_manager/1
  # DELETE /payment_manager/1.json
  def destroy
    @payment_manager.destroy
    respond_to do |format|
      format.html { redirect_to payment_manager_url, notice: 'Payment manager page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_manager
      @payment_manager = PaymentManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_manager_params
      params.fetch(:payment_manager, {})
    end
end
