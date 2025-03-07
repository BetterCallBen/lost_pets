Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "pets#index"

  get "/pets", to: "pets#index"
  get "/pets/new", to: "pets#new", as: :new_pet
  get "/pets/:id", to: "pets#show", as: :pet
  post "/pets", to: "pets#create"
  get "/pets/:id/edit", to: "pets#edit", as: :edit_pet
  patch "/pets/:id", to: "pets#update"
  delete "/pets/:id", to: "pets#destroy", as: :destroy_pet
end
