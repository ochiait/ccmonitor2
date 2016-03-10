Rails.application.routes.draw do
  get 'lessons/new'

  get 'teachers/new'
  resources :teachers
end
