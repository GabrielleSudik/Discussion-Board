Rails.application.routes.draw do
  root 'topics#index'
  # you added that last line -- it makes the main index go to the topics index instead
  # and the next routes to the new page.
  get '/supertopic', to: 'topics#supertopic'
  #next bit was added at two different times. the latter to allow voting.
  resources :topics do
    member do
      post 'upvote'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
