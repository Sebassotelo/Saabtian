Rails.application.routes.draw do
	
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :articles
  	# get "/articles"
  	# post "/articles"
  	# delete "/articles"
  	# get "/articles/:id"
  	# get "/articles/new"
  	# get "/articles/:id/edit"
  	# patch "/articles/:id"
  	# put "/articles/:id"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup
end
