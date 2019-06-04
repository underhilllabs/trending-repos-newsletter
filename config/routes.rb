Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  default_url_options :host => "gh.scrumple.net"
  devise_for :users
  root 'newsletters#index'
  resources :newsletters

  post "newsletters/send_current" => "newsletters#send_current"
  post "newsletters/subscribe" => "newsletters#subscribe"
  post "newsletters/unsubscribe" => "newsletters#unsubscribe"
end
