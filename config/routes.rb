Rails.application.routes.draw do
  resources :artists, except: [:destroy]
  resources :instruments, except: [:destroy]
  resources :artist_instruments, except: [:destroy]
end
