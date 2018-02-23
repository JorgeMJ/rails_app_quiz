Rails.application.routes.draw do

  get 'homepage/index'

	root 'homepage#index'
	
	get '/jobs' => 'jobs#index'
	get '/jobs/:id' => 'jobs#show'
	post '/jobs' => 'jobs#create'	

	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
