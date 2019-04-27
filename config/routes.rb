Rails.application.routes.draw do
  resources :expense_items
  namespace :admin do
      resources :accounts
      resources :budget_approvers
      resources :employees
      resources :expense_reports
      resources :payment_managers
      resources :request_forms
      resources :travel_forms
      resources :super_accounts

      root to: "accounts#index"
    end
  devise_for :accounts,  :controllers => { :registrations => 'registrations' }

  resources :payment_manager
  resources :budget_approver 
  resources :request_forms do
    member do
      patch 'approve'
      patch 'denied'
    end
  end
  resources :expense_reports
  resources :employee
  resources :travel_forms
  resources :departments

 root 'employee#index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end