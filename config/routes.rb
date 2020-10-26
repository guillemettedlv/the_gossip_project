Rails.application.routes.draw do
  get 'welcome/:first_name', to: 'welcome#show'
  get 'profil/:user', to: 'profil#show'
  get 'gossip/:id', to: 'gossip#show'
  get '/', to: 'static_pages#home'
  get '/team', to: 'static_pages#team'

  get '/contact', to: 'static_pages#contact'
end
