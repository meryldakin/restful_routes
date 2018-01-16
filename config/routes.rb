Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :sushis
get '/', to: "sushis#home"
get '/:anything', to: "application#wrong_page"

end
