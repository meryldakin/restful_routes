Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resource :sushis
get '/sushis/new', to: "sushis#new"
get '/sushis', to: "sushis#index"
get '/sushis/:id/edit', to: "sushis#edit"
get '/sushis/:id', to: "sushis#show", as: "sushi"
get '/', to: "sushis#home"
get '/:anything', to: "application#wrong_page"

end
