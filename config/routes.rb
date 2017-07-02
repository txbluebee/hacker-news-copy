Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/posts/search' => 'posts#search_result', as: 'search'

  resources :posts do
    member do
      patch :upvote
    end

    resources :comments
  end
end
