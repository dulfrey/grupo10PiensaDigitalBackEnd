Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'tipoevento', to:'tipoevento#index'

  resources :eventtypes, :users , :events, :assistance_event,  :eventqualification, :eventmember, :responsable_event

  get 'assistance_event/listado_asistencia/:event_id', to: 'assistance_event#listado_asistencia'
  get 'assistants/:id', to: 'events#to_list_asist'
  get 'responsibles/:id', to: 'events#to_list_responsibles'
end
