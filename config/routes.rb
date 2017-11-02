Rails.application.routes.draw do
  devise_for :users
  resources :ideas do
    member do
       put "like", to:"ideas#upvote"
       put "dislike", to:"ideas#downvote"
    end
  end

  root to: "ideas#index"
end
