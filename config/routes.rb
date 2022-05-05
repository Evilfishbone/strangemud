Rails.application.routes.draw do
  root 'static#home'
  get 'about', to: 'static#about'
  resources :new_stuffs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
