Rails.application.routes.draw do
  

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
