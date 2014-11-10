Rails.application.routes.draw do
  resources :countries
  root "countries#index"
  # match "countries/enroll/:id", to: "countries#enroll", :via => [:post], :as => "countries_enroll"
end
