Employee.transaction do
  Employee.delete_all
  Employee.create( :name => 'Ema' )
  Employee.create( :name => 'Eric' )
end

BudgetApprover.transaction do
  BudgetApprover.delete_all
  BudgetApprover.create( :name => 'Bob' )
  BudgetApprover.create( :name => 'Bran' )
  BudgetApprover.create( :name => 'Betty' )
  BudgetApprover.create( :name => 'Bill' )
  BudgetApprover.create( :name => 'Britney' )
  BudgetApprover.create( :name => 'Becky' )
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
  Account.create( :email => 'betty@budget.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable =>BudgetApprover.find_by_name("Betty"), :department_id => 3)
  Account.create( :email => 'bill@budget.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable =>BudgetApprover.find_by_name("Bill"), :department_id => 4)
  Account.create( :email => 'britney@budget.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable =>BudgetApprover.find_by_name("Britney"), :department_id => 5)
  Account.create( :email => 'becky@budget.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable =>BudgetApprover.find_by_name("Becky"), :department_id => 6)
  Account.create( :email => 'pam@payment.com', :password => 'changeme', :password_confirmation => 'changeme', 
                  :accountable => PaymentManager.find_by_name("Pam"))
end


TravelForm.transaction do
  TravelForm.delete_all
  TravelForm.create(:First_Name => 'Eric', :Last_Name => 'Eel', 
                    :Department => 'Marketing', :Start_Date => '2019-05-12', 
                    :End_Date => '2019-05-15', :Location => 'Texas', 
                    :Flight_Price => '450', :Hotel_Price => '300', 
                    :Transportation => '125', :Other => '75', 
                    :account_id => 2, :estimate => 950, :count => 2)
TravelForm.create(:First_Name => 'Ema', :Last_Name => 'Emerson', 
                    :Department => 'R&D', :Start_Date => '2019-05-12', 
                    :End_Date => '2019-05-15', :Location => 'Florida', 
                    :Flight_Price => '200', :Hotel_Price => '150', 
                    :Transportation => '50', :Other => '30', 
                    :account_id => 1, :estimate => 430, :count => 1)
end
  

RequestForm.transaction do
  RequestForm.delete_all
  RequestForm.create(:amount => '430', :departments_id => 1, :travel_form_id => 1)
  RequestForm.create(:amount => '400', :departments_id => 1, :travel_form_id => 2)
  RequestForm.create(:amount => '550', :departments_id => 2, :travel_form_id => 2)
end










