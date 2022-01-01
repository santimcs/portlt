Rails.application.routes.draw do
  resources :items
  resources :charts
  resources :profits
  root to:  'pages#home'

  resources :yr_profits
  resources :qt_profits
  resources :epss
  resources :stocks
  resources :tickers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get "/list_epss", to: 'epss#list_epss'    
    get "/display", to: 'tickers#display'        

end
