Rails.application.routes.draw do
  get 'lessons_for_participants/index'

  get "/lessons/:lesson_id/participants/new", :controller => :participants, :action => :new
  get "/lessons/participants/index", :controller => :participants, :action => :index
  resources :participants

  get 'lessons/new'
  get 'lessons/index'
  get 'lessons/show'
  resources :lessons

  get 'teachers/new'
  resources :teachers
  
  resource :login
  
  root :to => 'lessons_for_participants#index'
end
