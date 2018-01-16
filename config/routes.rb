Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resources :sushis
get '/sushis', to: "sushis#index", as: "sushis"
get '/sushis/new', to: "sushis#new", as: "new_sushi"
get '/sushis/:id', to: "sushis#show", as: "sushi"
get '/sushis/:id/edit', to: "sushis#edit", as: "edit_sushi"
post '/sushis', to: "sushis#create"
patch '/sushis/:id', to: "sushis#update"
delete '/sushis/:id', to: "sushis#destroy"
get '/', to: "sushis#home"
get '/:anything', to: "application#wrong_page"

end
