Rails.application.routes.draw do
  namespace :admin do
      resources :accounts
      resources :budget_approvers
      resources :budget_approver_pages
      resources :employees
      resources :employee_pages
      resources :expense_reports
      resources :payment_managers
      resources :payment_manager_pages
      resources :request_forms
      resources :travel_forms

      root to: "accounts#index"
    end
  devise_for :accounts,  :controllers => { :registrations => 'registrations' }
  resources :payment_manager_pages do
    put :approve
    put :denied
  end
  resources :budget_approver_pages do
    put :approve
    put :denied
  end

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
