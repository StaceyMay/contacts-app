Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "contacts#home"

  get "/new_contact", to: "contacts#new"
  post "/saved_contact", to: "contacts#save"
end
