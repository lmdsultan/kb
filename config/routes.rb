Rails.application.routes.draw do
  resources :systems
  devise_for :admins, controllers: { registrations: 'admins/registrations',
                                    sessions: 'admins/sessions', unlocks: 'admins/unlocks',
                                    passwords: 'admins/passwords', confirmations: 'admins/confirmations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
