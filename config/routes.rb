Rails.application.routes.draw do
  root "articles#index"

  get "/articles/private", to: "articles#private_articles"
  get "/articles/archived", to: "articles#archived_articles"

  resources :articles do
    resources :comments
  end
end


