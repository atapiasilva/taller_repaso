Rails.application.routes.draw do
  resources :playlists do
    resources :songs, only: [:create, :destroy]
  end
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
