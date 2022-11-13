Rails.application.routes.draw do
  resources :shops, only: %i[index]
end
