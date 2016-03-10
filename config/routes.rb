Rails.application.routes.draw do
  get 'lessons/new'
  resources :lessons

  get 'teachers/new'
  resources :teachers
end
