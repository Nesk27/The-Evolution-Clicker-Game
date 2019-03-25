Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#match ':controller(/:action(/:id))(.:format)'
	#match ':controller/:action/(:id)', via: :get
	get 'players/index'
	
	resources :players do
		get :click
		get :buy_1
		get :buy_2
		get :buy_3
		get :buy_4
		get :buy_5
		get :buy_6
		get :buy_7
		get :buy_8
		get :buy_9
		get :buy_10
	end
	
	root 'players#index'
end
