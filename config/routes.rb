  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources(:doctors,   only: [:show, :destroy])
  resources(:doctorpatients,   only: [:destroy])
end
