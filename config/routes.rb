Rails.application.routes.draw do
  resources :expense_reports
  resources :employee_pages
  resources :travel_forms
  
  root 'employee_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
