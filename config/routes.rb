Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'tipoevento', to:'tipoevento#index'
  resources :eventtypes, :users , :events, :eventqualification
  get '/papa', to: 'papas#cualquiera'
end
