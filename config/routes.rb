Rails.application.routes.draw do
  resources :sapats
  get 'manageo/indx'
  get 'manageo/abme'

 # ^ = match 'manageo/abme', :to=> 'manageo#abme', :via=> get

 # root 'manageo#abme' #page one

 #match ':controller(/:action(/:id))',:via=> :get #automatic


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
