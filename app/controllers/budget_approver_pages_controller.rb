class BudgetApproverPagesController < ApplicationController
  before_action :set_budget_approver_page, only: [:show, :edit, :update, :destroy]

  # GET /budget_approver_pages
  # GET /budget_approver_pages.json
  def index
    @budget_approver_pages = BudgetApproverPage.all
  end

  # GET /budget_approver_pages/1
  # GET /budget_approver_pages/1.json
  def show
  end

  # GET /budget_approver_pages/new
  def new
    @budget_approver_page = BudgetApproverPage.new
  end

  # GET /budget_approver_pages/1/edit
  def edit
  end

  # POST /budget_approver_pages
  # POST /budget_approver_pages.json
  def create
    @budget_approver_page = BudgetApproverPage.new(budget_approver_page_params)

    respond_to do |format|
      if @budget_approver_page.save
        format.html { redirect_to @budget_approver_page, notice: 'Budget approver page was successfully created.' }
        format.json { render :show, status: :created, location: @budget_approver_page }
      else
        format.html { render :new }
        format.json { render json: @budget_approver_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_approver_pages/1
  # PATCH/PUT /budget_approver_pages/1.json
  def update
    respond_to do |format|
      if @budget_approver_page.update(budget_approver_page_params)
        format.html { redirect_to @budget_approver_page, notice: 'Budget approver page was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_approver_page }
      else
        format.html { render :edit }
        format.json { render json: @budget_approver_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_approver_pages/1
  # DELETE /budget_approver_pages/1.json
  def destroy
    @budget_approver_page.destroy
    respond_to do |format|
      format.html { redirect_to budget_approver_pages_url, notice: 'Budget approver page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_approver_page
      @budget_approver_page = BudgetApproverPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_approver_page_params
      params.fetch(:budget_approver_page, {})
    end
end
