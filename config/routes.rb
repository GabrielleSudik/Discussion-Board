Rails.application.routes.draw do
  root 'topics#index'
  # you added that last line -- it makes the main index go to the topics index instead
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
