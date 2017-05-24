Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get "top", to: "restaurants#top"
    end
    member do
      get "chef", to: "restaurants#chef"
    end
    resources :reviews,  only: [:new, :create]
  end

  root 'restaurants#index'

end
