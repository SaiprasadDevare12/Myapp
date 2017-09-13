Rails.application.routes.draw do
 
#routes for the  homes controller action
  get 'homes/index'
  root 'homes#index'
  
  get 'registration' => "homes#registration"

  get 'new' => "curds#new"
  get 'show_all' => "curds#index"
  get "edit" => "curds#edit"
  get "show" => "curds#show"
  #post "create", :to => "curds#create"

#routes for the  curds controller action
   
  resources 'curds' do
	collection do
		get 'delete_entry'
		get 'delete_view'
	end
	member do
		get 'view'
		get 'delete_entry'
	end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
