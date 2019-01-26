Rails.application.routes.draw do
  get 'update_progress_user/index'
  post 'update_progress_user/input_date'
  post 'update_progress_user/update'

  devise_for :instructors
  devise_for :users
get '/make_subjects', to: 'subjects#new'
get '/make_subjects/show', to: 'make_subjects#show'
post '/make_subjects', to: 'subjects#create'
root :to => 'tops#index'
resources :confirm 
get "users/:id" => "mypages#show", as: :mypage
get '/books' , to: 'books#input_date'
post '/books/input_date' , to: 'books#input_time'
post '/books' , to: 'books#create'
delete '/books/:id', to: 'books#destroy'
delete '/subjects/:id', to: 'subjects#destroy'

get 'matelpage/index' => 'matelpage#index'
end
