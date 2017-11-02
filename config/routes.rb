Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :ideas do
    member do
       put "like", to:"ideas#upvote"
       put "dislike", to:"ideas#downvote"
    end
    resources :comments
  end

  root to: "ideas#index"
end
