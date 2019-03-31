module CurrentEmployee
  
    private
      def set_cart 
        @Employee = Employee.find(session[:employee_id,])
      rescue ActiveRecord::RecordNotFound
        @employee = Employee.create
        session[:employee_id] = @employee.id
      end
        
  end