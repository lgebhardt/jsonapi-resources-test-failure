Rails.application.routes.draw do
    require 'jsonapi/routing_ext'
  jsonapi_resources :domains do
    jsonapi_links :records
  end
  jsonapi_resources :records
end
