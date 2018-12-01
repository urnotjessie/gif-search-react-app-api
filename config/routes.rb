Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'api/search', to: 'gifs_search#index'
  get 'api/trending', to: 'gifs_trending#index'
end
