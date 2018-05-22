Rails.application.routes.draw do
  devise_for :users, controllers: {
    #sessions: 'users/sessions',
    registrations: 'users/registrations',
    #passwords: 'users/passwords',
    #confirmations: 'users/confirmations',
    #unlocks: 'users/unlocks',
    #omniauth: 'users/omniauth'
  }

  # resources :users do
  # 	resources :shows do
  # 		resources :episodes
  # 	end
  # end

  root 'home#index'

  get '/search/search',           to: 'search#search'

  get '/shows/search',            to: 'shows#search'
  get '/shows',                   to: 'shows#index'
  post '/shows/create',           to: 'shows#create'
  delete '/shows/destroy',        to: 'shows#destroy'

  post '/suggested',  to: 'shows#fetch_suggested'
  post '/premieres',  to: 'shows#fetch_premieres'
  post '/trending',  to: 'shows#fetch_trending'
  post '/watching',  to: 'shows#fetch_watching'
  get '/recommend',  to: 'shows#recommended'

  get '/:id/episodes',  to: 'episodes#index'
  post '/episodes',     to: 'episodes#create'
  delete '/episodes',   to: 'episodes#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
