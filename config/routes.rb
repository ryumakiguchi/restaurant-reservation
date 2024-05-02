Rails.application.routes.draw do
  devise_for :users
  root 'abs_reservations#index'
  resources :abs_reservations

  get '/inside/show', to: 'abs_reservations#show_inside', as: 'show_inside'
  get '/outside/show', to: 'abs_reservations#show_outside', as: 'show_outside'
end
