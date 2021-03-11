Rails.application.routes.draw do
  resources :portfolios, except: [:show]

  #Jeg excepter show, fordi jeg ikke vil have portfolios som flertal
  get 'portfolio/:id',  to: 'portfolios#show',  as: 'portfolio_show'
  #Dette betyder, at jeg f.eks. skal sætte portfolio_show_path i mine views, hvis jeg skal linke til et portfolio

  get 'about-me', to: 'pages#about'
  get 'contact', to:'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'


end
