Rails.application.routes.draw do
  devise_for :users
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
end
