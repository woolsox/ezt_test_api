Rails.application.routes.draw do
  resources :events do
    resources :details
  end
end
