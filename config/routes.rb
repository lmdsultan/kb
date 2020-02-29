Rails.application.routes.draw do

  resources :bases, only: [:index, :show]
  get "bases/:system_id/:id", to: "bases#details", as: "solve"
  resources :systems do 
    resources :incidents
  end
  devise_for :admins, controllers: { registrations: 'admins/registrations',
                                      sessions: 'admins/sessions', unlocks: 'admins/unlocks',
                                      passwords: 'admins/passwords', confirmations: 'admins/confirmations'}

  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions', unlocks: 'users/unlocks',
                                    passwords: 'users/passwords', confirmations: 'users/confirmations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end


