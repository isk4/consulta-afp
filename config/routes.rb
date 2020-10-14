Rails.application.routes.draw do
  get 'uf/:date', to: 'ufs#show'
  get 'client/:name', to: 'requests#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end