Rails.application.routes.draw do
  get 'active_record/migration'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :products

  root 'active_record#migration'
end
