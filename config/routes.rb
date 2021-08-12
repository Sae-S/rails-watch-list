Rails.application.routes.draw do
  get 'bookmarks/create'
  get 'bookmarks/new'
  get 'bookmarks/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:create, :new, :destroy]
  end
end
