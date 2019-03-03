Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete 'product/:id' => 'products#destroy'
  #   get "/photos" => "photos#index"
  end
end