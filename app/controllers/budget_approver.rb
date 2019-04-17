class BudgetApproverController < ApplicationController
    before_action :set_budget_approver_page, only: [:show, :edit, :update, :destroy]
  
    # GET /budget_approver
    # GET /budget_approver.json
    def index
      @budget_approver = BudgetApprover.all
    end
  
    # GET /budget_approver/1
    # GET /budget_approver/1.json
    def show
        @travel_forms = TravelForm.all
    end
  
    # GET /budget_approver/new
    def new
      @budget_approver = BudgetApprover.new
    end
  
    # GET /budget_approver/1/edit
    def edit
    end
  
    # POST /budget_approver
    # POST /budget_approver.json
    def create
      @budget_approver = BudgetApprover.new(budget_approver_page_params)
      respond_to do |format|
        if @budget_approver.save
          format.html { redirect_to @budget_approver, notice: 'Budget approver page was successfully created.' }
          format.json { render :show, status: :created, location: @budget_approver }
        else
          format.html { render :new }
          format.json { render json: @budget_approver.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /budget_approver/1
    # PATCH/PUT /budget_approver/1.json
    def update
      respond_to do |format|
        if @budget_approver.update(budget_approver_page_params)
          format.html { redirect_to @budget_approver, notice: 'Budget approver page was successfully updated.' }
          format.json { render :show, status: :ok, location: @budget_approver }
        else
          format.html { render :edit }
          format.json { render json: @budget_approver.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /budget_approver/1
    # DELETE /budget_approver/1.json
    def destroy
      @budget_approver.destroy
      respond_to do |format|
        format.html { redirect_to budget_approver_url, notice: 'Budget approver page was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_budget_approver_page
        @budget_approver = BudgetApprover.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def budget_approver_page_params
        params.fetch(:budget_approver_page, {})
      end
  end
  