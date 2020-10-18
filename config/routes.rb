Rails.application.routes.draw do
  resources :violations
  resources :drivers
  root to: "drivers#index"
end
