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
      resources :super_accounts

      root to: "accounts#index"
    end
  devise_for :accounts,  :controllers => { :registrations => 'registrations' }

  resources :payment_manager_pages do
    put :approve
    put :denied
    root to: "payment_manager_pages#index"
  end
  resources :budget_approver_pages do
    put :approve
    put :denied
  end


  resources :payment_manager_pages
  resources :budget_approver_pages

  resources :request_forms
  resources :expense_reports
  resources :employee_pages
  resources :travel_forms
 root 'employee_pages#index'
 #root '/accounts/sign_in'
 #root 'devise/sessions#new'
 #devise_scope :accounts do get 'employee_pages#index' => 'devise/sessions#new' end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end