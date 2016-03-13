Rails.application.routes.draw do
  get 'participants/new'
  resources :participants

  get 'lessons/new'
  resources :lessons

  get 'teachers/new'
  resources :teachers
end
