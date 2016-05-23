get '/login', to: 'session#new', as: :login
post '/login', to: 'session#create', as: :do_login
get '/logout', to: 'session#delete', as: :do_logout

get '/', to: 'dashboard#index', as: 'admin_root'
# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage
