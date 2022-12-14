Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/donuts" => "donuts#index"
    get "/donuts/:id" => "donuts#show" 

    post "/donuts" => "donuts#create"
    patch "/donuts/:id" => "donuts#update"
    delete "/donuts/:id" => "donuts#delete"
  end
end
