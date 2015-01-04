Rails.application.routes.draw do

  namespace :api, path: '/', constraints: { subdomain: 'api' } , defaults: { format: 'json' } do
    resources :players
  end

end
