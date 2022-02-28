Rails.application.routes.draw do
  get 'albums/index'
 
  resources :albums do
    resources :songs
  end
 
  root 'albums#index'
end


