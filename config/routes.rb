Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'website#open_source'

  get '/addons', to: 'website#addons'
  get '/services', to: 'website#services'

  get '/imprint', to: 'website#imprint'
  get '/privacy', to: 'website#privacy'

  post '/newsletter_signup', to: 'website#newsletter_signup'
  get '/newsletter_confirm', to: 'website#newsletter_confirm'
  get '/newsletter_cancel', to: 'website#newsletter_cancel'

  post :some_rails_route, to: 'examples#some_rails_route_action'
  post :some_form_submit_route, to: 'examples#some_form_submit_action'

end
