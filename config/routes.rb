Rails.application.routes.draw do

  devise_for :usuarios
  root "autos#index"

  get 'autos/', to: 'autos#index'
  get 'autos/nuevo', to: 'autos#nuevo', as: 'nuevo_auto'
  get 'autos/:id',to:'autos#mostrar', as: 'auto'
  get 'autos/:id/editar',to: 'autos#editar', as: 'editar_auto'
  put 'autos/:id' ,to: 'autos#update'
  patch 'autos/:id' ,to: 'autos#update'
  post 'autos/', to: 'autos#crear'
  delete 'autos/:id',to: 'autos#eliminar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
