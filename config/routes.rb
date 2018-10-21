Rails.application.routes.draw do
  resources :employers, except: [:show]

  get 'employer/:id', to: 'employers#show', as: 'employer_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
