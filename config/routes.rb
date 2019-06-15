Rails.application.routes.draw do
  resources :highlights, except: [:show]
  get 'highlights/:id', to: 'highlights#show', as: 'highlight_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
