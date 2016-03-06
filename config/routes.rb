Rails.application.routes.draw do
  get 'teachers/new'
  resources :teachers
end
