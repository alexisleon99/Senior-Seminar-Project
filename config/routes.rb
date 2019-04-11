Rails.application.routes.draw do
<<<<<<< HEAD
  

=======
  devise_for :accounts,  :controllers => { :registrations => 'registrations' }
>>>>>>> 6f3847fe0069d89879022b21bf93774d5af73e5a
  resources :payment_manager_pages
  resources :budget_approver_pages
  resources :request_forms
  resources :expense_reports
  resources :employee_pages
  resources :travel_forms do
    put :approve
    put :denied
  end
  
  root 'employee_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
