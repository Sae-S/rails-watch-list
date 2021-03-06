Rails.application.routes.draw do
  root to: 'lists#index'
  get 'movies/show'
  get 'bookmarks/create'
  get 'bookmarks/new'
  get 'bookmarks/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
  # resources :movies, only: [:show]
end
