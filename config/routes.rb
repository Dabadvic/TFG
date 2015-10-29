Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'static_pages#home'

  get 'help' => 'static_pages#help'

  get 'about' => 'static_pages#about'

  get 'signup' => 'users#new'

end
