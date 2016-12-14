Rails.application.routes.draw do
get '/users/new' => 'users#new'
post '/users' => 'users#create'
get "/users/:id" =>'users#show'

get '/sessions/new' => 'sessions#new'
post '/sessions' => 'sessions#create'

post '/secrets' => 'secrets#create'
get '/secrets' => 'secrets#index'
delete "/secrets/:id" =>"secrets#destroy"
# post "/users/:id" =>'users#savesecret'
post '/likes' => 'likes#create'
delete '/likes/:id' =>'likes#destroy'
end




# AWS Deployment
#   -set up the AWS instance - ubuntu 14.04 16.04, storage, key pair value
#   -ruby, rvm(manage version of ruby and rails),rails, passenger - app server
#   -nginx -web server
#   -nodejs
#   -postgres(for database)
