Rails.application.routes.draw do
  devise_for :users

  get '/', to: 'research#index'
  get '/research/:id', to: 'research#list'

  get '/detail/:id', to: 'laboratory#detail'

  get '*path', controller: 'application', action: 'render_404'
end
