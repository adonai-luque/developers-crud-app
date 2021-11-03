Rails.application.routes.draw do
  get 'developers/index'
  get 'developers/show'
  get 'developers/new'
  get 'developers/create'
  get 'developers/edit'
  get 'developers/update'
  get 'developers/update'
  get 'developers/destroy'
  root "developers#index"
end
