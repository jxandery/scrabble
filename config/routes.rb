Rails.application.routes.draw do
  resources :plays
  get '/evaluates', to: "evaluates#new"
  post 'evaluates', to: "evaluates#create"
end
