Boats::Application.routes.draw do
  root :to => 'home#index'
  get "sitemap" => "home#sitemap", :as => :sitemap

  resources :boats, :only => :show, :path => 'yachts'
  resources :destinations, :only => :show
end