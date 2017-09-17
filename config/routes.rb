Rails.application.routes.draw do
 
#routes for the  homes controller action
 
  root 'homes#index'
  
  get 'registration' => "homes#registration"

#routes for the  curds controller action
   
  resources 'curds'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
