Rails.application.routes.draw do
  get 'uf/:date', to: 'ufs#show', as: 'get_uf_value'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end