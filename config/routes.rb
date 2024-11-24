
Rails.application.routes.draw do
  root to: 'user_inputs#new'
  resources :user_inputs, only: [:new, :create]
  get 'body', to: 'bodies#show', as: 'body'
  get '/symptoms/:part', to: 'bodies#show_symptoms', as: 'symptoms'
  get '/next_page/:id', to: 'user_inputs#next_page', as: 'next_page'
  get 'symptoms', to: 'symptoms#show', as: 'show_symptoms'

end


