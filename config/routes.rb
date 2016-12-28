Rails.application.routes.draw do
  devise_for :users

  get '/', to: 'research#index'
  get '/research/:id', to: 'research#list'

  get '/laboratory/:id', to: 'laboratory#detail'

  get '/user', to: 'user#home'

  post '/laboratory/follow', to: "laboratory_follow#create"
  delete '/laboratory/follow', to: "laboratory_follow#destroy"

  get '*path', controller: 'application', action: 'render_404'
end
