Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id/:subject', to: 'search#subject', as: "search/subject"
    post 'answer', to: 'answer#question'
  end
  namespace :users_backoffice do
    get 'welcome/index'
    get 'profile', to: 'profile#edit'
    patch 'profile', to: 'profile#update'
    get 'zip_code', to: 'zip_code#show'
    get 'tests', to: 'tests#index'
    get 'tests/:id', to: 'tests#make'
    resources :answered_tests
  end
  namespace :admins_backoffice do
    get 'welcome/index'
    resources :admins
    resources :subjects #assuntos/areas
    resources :questions #perguntas
    resources :tests #provas
    resources :test_questions #questões da prova
  end
  
  devise_for :admins, skip: [:registrations]
  devise_for :users

  get 'home', to: 'site/welcome#index'
  get 'admin', to: 'admins_backoffice/welcome#index'

  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
