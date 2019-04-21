Rails.application.routes.draw do
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

  resources :payment_manager do
    put :approve
    put :denied
    root to: "payment_manager#index"
  end
  resources :budget_approver do
    put :approve
    put :denied
  end


  resources :payment_manager
  resources :budget_approver

  resources :request_forms
  resources :expense_reports
  resources :employee
  resources :travel_forms
  resources :departments
 get '/Approve', to: 'travel_forms#approved', as: 'Approve'
 root 'employee#index'
 #root '/accounts/sign_in'
 #root 'devise/sessions#new'
 #devise_scope :accounts do get 'employee_pages#index' => 'devise/sessions#new' end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end