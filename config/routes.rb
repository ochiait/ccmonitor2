Rails.application.routes.draw do
  get '/participants/new'
  resources :participants

  get 'lessons/new'
  get 'lessons/index'
  get 'lessons/show'
  resources :lessons

  get 'teachers/new'
  resources :teachers
end
