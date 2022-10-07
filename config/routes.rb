Rails.application.routes.draw do
  root "users#index"
    post "users/id/accounts/new", to: "accounts#create"
    put  "accounts/update"

   resources :users  do
    resources :accounts

     #get "/accounts/:id, to: "acounts#show"
  end
end
