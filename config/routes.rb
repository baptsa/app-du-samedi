Rails.application.routes.draw do
  root to: 'bars#index'


resources :bars do
  resources :reviews
end


end
