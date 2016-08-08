Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations" }

  resources :users, only: [:show], shallow: true do
    resources :collections do
      resources :books
      get "books/search", to: "books#search", as: "search_book"
      post "books/result", to: "books#result", as: "search_result"
    end
  end

  resources :collections, only: [:index]

  root to: 'welcome#index'

end
