Employee.transaction do
  Employee.delete_all
  Employee.create( :name => 'Ema' )
  Employee.create( :name => 'Eric' )
end

BudgetApprover.transaction do
  BudgetApprover.delete_all
  BudgetApprover.create( :name => 'Bob' )
  BudgetApprover.create( :name => 'Bran' )
end

PaymentManager.transaction do
  PaymentManager.delete_all
  PaymentManager.create( :name => 'Pam' )
end
Department.transaction do
  Department.delete_all
  Department.create(:names => 'R&D')
  Department.create(:names => 'Marketing')
  Department.create(:names => 'Sales')
  Department.create(:names => 'Media & Communications')
  Department.create(:names => 'Information Technology')
  Department.create(:names => 'Legal')
end

Account.transaction do
  Account.delete_all
  Account.create( :email => 'Ema@employee.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable => Employee.find_by_name("Ema"))
  Account.create( :email => 'Eric@employee.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable => Employee.find_by_name("Eric"))
  Account.create( :email => 'bob@budget.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable => BudgetApprover.find_by_name("Bob"), :department_id => 1)
  Account.create( :email => 'bran@budget.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable =>BudgetApprover.find_by_name("Bran"), :department_id => 2)
  Account.create( :email => 'pam@payment.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable => PaymentManager.find_by_name("Pam"))
end