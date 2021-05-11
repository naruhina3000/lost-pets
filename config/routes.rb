Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pets#index"

  # CREATE
  get "/pets/new", to: "pets#new", as: :new_pet
  post "/pets", to: "pets#create", as: :pets

  # READ
  # ONE
  get "/pets/:id", to: "pets#show", as: :pet

  # UPDATE
  get "/pets/:id/edit", to: "pets#edit", as: :edit_pet
  patch "/pets/:id", to: "pets#update"

  # DESTROY
  delete "/pets/:id", to: "pets#destroy"
end
