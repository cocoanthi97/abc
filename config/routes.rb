Rails.application.routes.draw do
  get 'mypages/show'

  devise_for :users
root :to => 'tops#index'
#get '/tops' , to: 'tops#index'
get '/books' , to: 'books#input_date'
post '/books/input_date' , to: 'books#input_time'
post '/books' , to: 'books#create'
get "users/:id" => "mypages#show", as: :mypage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
