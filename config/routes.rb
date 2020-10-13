Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Command to check all your routes in terminal => rails routes.

  root to: 'pages#home'

  get '/about', to: 'pages#about', as: :about_us
  # verb        to: 'controller#action'
  get '/contact', to: 'pages#contact'

end
