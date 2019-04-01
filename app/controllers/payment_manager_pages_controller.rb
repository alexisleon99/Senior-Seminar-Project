class PaymentManagerPagesController < ApplicationController
  before_action :set_payment_manager_page, only: [:show, :edit, :update, :destroy]

  # GET /payment_manager_pages
  # GET /payment_manager_pages.json
  def index
    @payment_manager_pages = PaymentManagerPage.all
  end

  # GET /payment_manager_pages/1
  # GET /payment_manager_pages/1.json
  def show
  end

  # GET /payment_manager_pages/new
  def new
    @payment_manager_page = PaymentManagerPage.new
  end

  # GET /payment_manager_pages/1/edit
  def edit
  end

  # POST /payment_manager_pages
  # POST /payment_manager_pages.json
  def create
    @payment_manager_page = PaymentManagerPage.new(payment_manager_page_params)

    respond_to do |format|
      if @payment_manager_page.save
        format.html { redirect_to @payment_manager_page, notice: 'Payment manager page was successfully created.' }
        format.json { render :show, status: :created, location: @payment_manager_page }
      else
        format.html { render :new }
        format.json { render json: @payment_manager_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_manager_pages/1
  # PATCH/PUT /payment_manager_pages/1.json
  def update
    respond_to do |format|
      if @payment_manager_page.update(payment_manager_page_params)
        format.html { redirect_to @payment_manager_page, notice: 'Payment manager page was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_manager_page }
      else
        format.html { render :edit }
        format.json { render json: @payment_manager_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_manager_pages/1
  # DELETE /payment_manager_pages/1.json
  def destroy
    @payment_manager_page.destroy
    respond_to do |format|
      format.html { redirect_to payment_manager_pages_url, notice: 'Payment manager page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_manager_page
      @payment_manager_page = PaymentManagerPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_manager_page_params
      params.fetch(:payment_manager_page, {})
    end
end
