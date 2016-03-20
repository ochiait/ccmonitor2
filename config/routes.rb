Rails.application.routes.draw do
  get "/lessons/:lesson_id/participants/new", :controller => :participants, :action => :new
  resources :participants

  get 'lessons/new'
  get 'lessons/index'
  get 'lessons/show'
  resources :lessons

  get 'teachers/new'
  resources :teachers
end
